Pod::Spec.new do |s|
  s.name = 'Sodium'
  s.version = '1.0.0'
  s.license = { :type => "MIT", :file => 'LICENSE' }
  s.summary = 'Swift-Sodium provides a safe and easy to use interface to perform common cryptographic operations on iOS and OSX.'
  s.homepage = 'https://github.com/qizitech/Sodium-framework'
  s.authors = { 'cuzv' => '' }
  s.source = { :git => 'https://github.com/qizitech/Sodium-framework', :tag => s.version.to_s }

  s.requires_arc = true
  
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'

  s.source_files = 'Sodium/**/*.{swift,h,a}'
  s.public_header_files = 'Sodium/**/*.h'

  s.ios.vendored_library = 'Sodium/libs/libsodium-iOS.a'
  s.osx.vendored_library = 'Sodium/libs/libsodium-macOS.a'
  
end
