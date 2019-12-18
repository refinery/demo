source 'https://rubygems.org'

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.10'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.3'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'falcon' # web server

gem 'refinerycms', "~> 3.0.4"

# Add support for refinerycms-acts-as-indexed
gem 'refinerycms-acts-as-indexed', ['~> 3.0', '>= 3.0.0']

# Add support for refinerycms-wymeditor
gem 'refinerycms-wymeditor', ['~> 1.0', '>= 1.0.6']

gem 'refinerycms-blog', '~> 3.0'
gem 'refinerycms-inquiries', "~> 3.0"
gem 'refinerycms-page-images', '~> 3.0'
gem 'refinerycms-portfolio', git: 'https://github.com/refinery/refinerycms-portfolio', branch: 'master'
gem 'refinerycms-search', git: 'https://github.com/refinery/refinerycms-search', branch: '3-0-stable'
gem 'refinerycms-authentication-devise', '>= 1.0.4'
gem 'devise', git: 'https://github.com/plataformatec/devise', branch: '3-stable'

group :production do
  gem 'rails_12factor'
end
