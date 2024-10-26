require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Projetov2
  class Application < Rails::Application

    config.load_defaults 7.2
    config.autoload_paths << "#{config.root}/app/filters"
    config.autoload_paths << "#{config.root}/app/services"
    config.autoload_lib(ignore: %w[assets tasks])
    

  end
end
