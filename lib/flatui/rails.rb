require "bootstrap-sass"
require "flatui/rails/version"

module Flatui
  module Rails
    class Engine < ::Rails::Engine
      initializer "flatui-rails.assets.precompile" do |app|
        # include all the png files in vendor/assets/images folder
        # include all the font files in vendor/assets/fonts folder
        app.config.assets.precompile += %w(*.png)
        app.config.assets.precompile += %w(*.eot *.svg *.tff *.woff)
      end
    end
  end
end
