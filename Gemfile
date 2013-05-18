source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'jquery-rails'
gem 'unicorn'
gem 'pg'
gem 'haml'
gem 'haml-rails'
gem 'simple_form'
gem 'pivotal-tracker'   #https://github.com/jsmestad/pivotal-tracker
gem 'github_api'        #https://github.com/peter-murach/github
gem 'bootstrap-sass'
gem 'newrelic_rpm'

gem 'resque', "~> 1.22.0"
gem 'resque-scheduler'
gem 'redis-store', '~> 1.0.0'

gem 'foreman'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end


group :test, :development do
  gem 'sqlite3'
  gem 'rspec-rails', "~> 2.0"
  gem 'capybara'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-minitest'
  gem 'rb-fsevent'
  gem 'factory_girl_rails'
  gem 'vcr'
end

group :test do
  gem 'webmock'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'simplecov'
end
