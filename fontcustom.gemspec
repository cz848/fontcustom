# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fontcustom/version"

Gem::Specification.new do |gem|
  gem.name          = "fontcustom"
  gem.version       = Fontcustom::VERSION
  gem.authors       = ["Kai Zau", "Joshua Gross", "Tyler Chao"]
  gem.email         = ["kai@kaizau.com", "joshua@gross.is", "medoncn@gmail.com"]
  gem.summary       = "Generate icon fonts from the command line."
  gem.description   = "Font Custom makes using vector icons easy. Generate icon fonts and supporting templates (e.g. @font-face CSS) from a collection of SVGs."
  gem.homepage      = "http://github.com/cz848/fontcustom"
  gem.post_install_message = ">> Thanks for installing Font Custom! Please ensure that fontforge is installed before compiling any icons. Visit <http://github.com/cz848/fontcustom> for instructions."

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "json", "~>1.4"
  gem.add_dependency "thor", "~>0.14"
  gem.add_dependency "listen", ">=1.0","<4.0"

  gem.add_development_dependency "rake", "~> 10"
  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rspec", "~>3.1.0"
end
