Pod::Spec.new do |s|

  s.name     = 'BaiduMapAPI'
  s.version  = '2.6.0'
  s.license  = { :type => 'Copyright', :text => 'LICENSE  ©2013 Baidu, Inc. All rights reserved.' }
  s.summary  = 'Baidu Map API For iOS.'
  s.homepage = 'http://developer.baidu.com/map/index.php?title=iossdk'
  s.authors  = { 'Steven' => 'qzs21@qq.com' }
  s.source   = { :git => 'https://github.com/qzs21/BaiduMapAPI.git', :tag => s.version }
  s.ios.deployment_target = '4.3'
  
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
  s.source_files = [
    'Framework/include/*.h',
    'Framework/Extend/*.{h,mm,m}'
  ]
  s.vendored_libraries = 'Framework/libBaiduMapAPI.a'
  s.resources = 'Framework/mapapi.bundle'
  
  
end