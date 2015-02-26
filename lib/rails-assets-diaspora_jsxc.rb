require "rails-assets-lygneo_jsxc/version"

require "rails-assets-jquery"
require "rails-assets-jquery-ui"
require "rails-assets-jquery-colorbox"
require "rails-assets-jquery.slimscroll"
require "rails-assets-jquery-fullscreen"

module RailsAssetsLygneoJsxc

  def self.gem_path
    Pathname(File.realpath(__FILE__)).join('../..')
  end

  def self.gem_spec
    Gem::Specification::load(
      gem_path.join("rails-assets-lygneo_jsxc.gemspec").to_s
    )
  end

  def self.load_paths
    gem_path.join('app/assets').each_child.to_a
  end

  def self.dependencies
    [
      RailsAssetsJquery,
      RailsAssetsJqueryUi,
      RailsAssetsJqueryColorbox,
      RailsAssetsJquerySlimscroll,
      RailsAssetsJqueryFullscreen
    ]
  end

  if defined?(Rails)
    class Engine < ::Rails::Engine
      # Rails -> use app/assets directory.
    end
  end

end

class RailsAssets
  @components ||= []

  class << self
    attr_accessor :components

    def load_paths
      components.flat_map(&:load_paths)
    end
  end
end

RailsAssets.components << RailsAssetsLygneoJsxc
