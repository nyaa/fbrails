# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fbrails/version"


Gem::Specification.new do |s|
  s.name        = "fbrails"
  s.version     = Fbrails::VERSION
  s.authors     = ["Dmitry Gruzd", "Vitaly Mineev", "Ivan Shamatov"]
  s.email       = ["donotsendhere@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Small gem for auth & getting info from facebook}
  s.description = %q{Small gem for auth & getting info from facebook}

  s.rubyforge_project = "fbrails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency "httpclient"
  #s.add_development_dependency "httpclient"
end
