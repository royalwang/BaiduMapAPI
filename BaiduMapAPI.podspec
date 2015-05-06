Pod::Spec.new do |s|

  s.name     = 'BaiduMapAPI'
  s.version  = '2.7.0'
  s.license  = { :type => 'Copyright', :text => 'LICENSE  ©2013 Baidu, Inc. All rights reserved.' }
  s.summary  = 'Baidu Map API For iOS.'
  s.homepage = 'http://developer.baidu.com/map/index.php?title=iossdk'
  s.authors  = { 'Steven' => 'qzs21@qq.com' }
  s.source   = { :git => 'https://github.com/qzs21/BaiduMapAPI.git', :tag => s.version }
  s.ios.deployment_target = '5.0'
  s.requires_arc   = true

  s.resources               = 'Framework/Resources/mapapi.bundle'
  s.ios.vendored_frameworks = 'Framework/BaiduMapAPI.framework'
  s.public_header_files = [
    'Framework/Extend/*.h',
    'Framework/BaiduMapAPI.framework/Headers/*.h'
  ]
  s.source_files = [
      'Framework/Extend/*.{h,mm,m}',
  ]
  s.frameworks = [ 
    'UIKit',
    'CoreLocation',
    'QuartzCore',
    'OpenGLES',
    'SystemConfiguration',
    'CoreGraphics',
    'Security'
  ] 
  s.libraries = [
    "stdc++",
    "stdc++.6"
  ]
  
end