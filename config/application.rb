require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Chat
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      #g.assets false
      #g.helper false
    end

    config.i18n.default_locale = :"zh-CN"
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.yml")]
  end
end
