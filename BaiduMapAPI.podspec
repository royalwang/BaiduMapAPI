Pod::Spec.new do |s|

  s.name     = 'BaiduMapAPI'
  s.version  = '2.6.0'
  s.license  = { :type => 'Copyright', :text => 'LICENSE  ©2013 Baidu, Inc. All rights reserved.' }
  s.summary  = 'Baidu Map API For iOS.'
  s.homepage = 'http://developer.baidu.com/map/index.php?title=iossdk'
  s.authors  = { 'Steven' => 'qzs21@qq.com' }
  #s.source   = { :git => 'https://github.com/qzs21/BaiduMapAPI.git', :tag => s.version }
  s.source   = { :tag => './', :tag => s.version }
  s.ios.deployment_target = '4.3'

  s.subspec 'BaiduMapAPIExtend' do |spec|
    spec.requires_arc = true
    spec.public_header_files = 'Framework/Extend/*.h'
    spec.source_files = 'Framework/Extend/*.{h,mm,m}'
  end

  s.subspec 'BaiduMapAPI' do |spec|
    spec.requires_arc   = false
    spec.compiler_flags = '-lObjC'
    spec.frameworks = [ 
      'UIKit',
      'CoreLocation',
      'QuartzCore',
      'OpenGLES',
      'SystemConfiguration',
      'CoreGraphics',
      'Security'
    ]
    spec.libraries = [
      "stdc++",
      "stdc++.6"
    ]
    spec.public_header_files = 'Framework/include/*.h'
    spec.source_files = 'Framework/include/*.h'
    spec.vendored_libraries = 'Framework/libBaiduMapAPI.a'
    spec.resources = 'Framework/mapapi.bundle'
  end
  
end