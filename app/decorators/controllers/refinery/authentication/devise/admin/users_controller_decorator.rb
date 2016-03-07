module RefineryAuthenticationDeviseAdminUsersControllerDecorator
  def update
    # Store what the user selected.
    @selected_role_names = params[:user].delete(:roles) || []
    @selected_role_names = @user.roles.select(:title).map(&:title) unless user_can_assign_roles?
    @selected_plugin_names = params[:user][:plugins]

    if user_is_locking_themselves_out? || @user.username == 'demo'
      flash.now[:error] = t('lockout_prevented', :scope => 'refinery.authentication.devise.admin.users.update')
      render :edit and return
    end

    store_user_memento

    @user.roles = @selected_role_names.map { |r| Refinery::Authentication::Devise::Role[r.downcase] }
    if @user.update_attributes user_params
      update_successful
    else
      update_failed
    end
  end
end

Refinery::Authentication::Devise::Admin::UsersController.send :prepend, RefineryAuthenticationDeviseAdminUsersControllerDecorator