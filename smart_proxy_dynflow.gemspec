# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smart_proxy_dynflow/version'

Gem::Specification.new do |gem|
  gem.name          = "smart_proxy_dynflow"
  gem.version       = Proxy::Dynflow::VERSION
  gem.authors       = ['Ivan Nečas']
  gem.email         = ['inecas@redhat.com']
  gem.homepage      = "https://github.com/theforeman/smart_proxy_dynflow"
  gem.summary       = %q{Dynflow runtime for Foreman smart proxy}
  gem.description   = <<-EOS
    Use the Dynflow in side Foreman smart proxy
  EOS

  gem.files         = Dir['{bundler.d,lib,settings.d}/**/*', 'LICENSE', 'Gemfile']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license = 'GPLv3'

  gem.add_development_dependency "bundler", "~> 1.7"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency('test-unit', '~> 2')
  gem.add_development_dependency('mocha', '~> 1')
  gem.add_development_dependency('webmock', '~> 1')
  gem.add_development_dependency('rack-test', '~> 0')
  gem.add_development_dependency('rake', '~> 10')

  gem.add_runtime_dependency('dynflow')
  gem.add_runtime_dependency('sequel')
  gem.add_runtime_dependency('sqlite3')
end

