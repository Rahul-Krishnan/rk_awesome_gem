# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rk_awesome_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "rk_awesome_gem"
  spec.version       = RkAwesomeGem::VERSION
  spec.authors       = ["Rahul Krishnan"]
  spec.email         = ["rk2211@gmail.com"]

  spec.summary       = %q{This is my awesome gem and it does awesome stuff}
  spec.description   = %q{This really is an awesome gem. You have to try it to believe it!}
  spec.homepage      = "http://www.github.com/Rahul-Krishnan/rk_awesome_gem"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sinatra", "~> 1.4.7"
  spec.add_runtime_dependency "redcarpet", "~> 3.3.4"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "pry", "~> 0.10.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
