Pod::Spec.new do |s|
  s.name                      = "BeautifulRequests"
  s.version                   = "1.0.0"
  s.summary                   = "BeautifulRequests"
  s.homepage                  = "git@github.com:kimtaesu/BeautifulRequests.git"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Tyler" => "kimtaesoo188@gmail.com" }
  s.source                    = { :git => "git@github.com:kimtaesu/BeautifulRequests.git.git", :tag => s.version.to_s }
  s.ios.deployment_target     = "8.0"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"
  s.osx.deployment_target     = "10.10"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end
