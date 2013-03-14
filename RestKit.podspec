Pod::Spec.new do |s|
  s.name         =  'RestKit'
  s.version      =  '0.10.2-patches'
  s.summary      =  'RestKit is a framework for consuming and modeling RESTful web resources on iOS and OS X.'
  s.homepage     =  'http://www.restkit.org'
  s.author       =  { 'Blake Watters' => 'blakewatters@gmail.com' }
  s.source       =  { :git => 'https://github.com/ianthehenry/RestKit.git', :branch => '0.10.2-patches' }
  s.license      =  'Apache License, Version 2.0'
  
  # Platform setup
  s.requires_arc = false
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  
  # Exclude optional Search and Testing modules
  s.preferred_dependency = 'Core'
  
  # Add Core Data to the PCH (This should be part of the Core Data Subspec, but CocoaPods does not allow)
  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
#import <CoreData/CoreData.h>
#endif /* __OBJC__*/
EOS

end
