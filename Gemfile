source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'devise'

group :development, :test do
  gem 'rspec-rails'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'webmock'
  gem 'faker'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :test do
  gem 'simplecov', require: false
end

group :development do
  gem "web-console"
end

