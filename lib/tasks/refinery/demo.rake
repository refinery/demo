namespace :refinery do
  namespace :demo do
    desc "Set up us the demo"
    task :reset => :environment do
      Rake::Task["db:reset"].invoke

      Refinery::Authentication::Devise::User.new(
        :username => 'demo',
        :password => 'demo',
        :email => 'demo@example.org',
        :full_name => "Refinery Demo User"
      ).create_first
    end
  end
end
