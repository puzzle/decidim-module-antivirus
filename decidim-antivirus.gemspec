# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "decidim/antivirus/version"

Gem::Specification.new do |spec|
  spec.name = "decidim-antivirus"
  spec.version = Decidim::Antivirus::VERSION
  spec.required_ruby_version = ">= 3.2"
  spec.authors = ["Antti Hukkanen"]
  spec.email = ["antti.hukkanen@mainiotech.fi"]
  spec.metadata = {
    "rubygems_mfa_required" => "true"
  }

  spec.summary = "Provides antivirus checks for Decidim file uploads."
  spec.description = "Adds antivirus checks through ClamAV for Decidim's public file uploads."
  spec.homepage = "https://github.com/mainio/decidim-module-antivirus"
  spec.license = "AGPL-3.0"

  spec.files = Dir[
    "{app,config,lib}/**/*",
    "LICENSE-AGPLv3.txt",
    "Rakefile",
    "README.md"
  ]

  spec.require_paths = ["lib"]

  spec.add_dependency "decidim-core", Decidim::Antivirus::DECIDIM_VERSION
  spec.add_dependency "ratonvirus", "~> 0.4.3"
  spec.add_dependency "ratonvirus-clamby", "~> 0.4.0"
end
