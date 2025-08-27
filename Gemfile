source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
# gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
# gem "image_processing", "~> 1.2"
gem "devise", "~> 4.9"
gem "slim-rails"
gem "sentry-ruby"
gem "sentry-rails"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "faker"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "sqlite3", ">= 1.4"
  gem "slim_lint"
end

group :development do
  gem "web-console"
end

group :test do
  gem "minitest-power_assert"
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem "pg"
end
