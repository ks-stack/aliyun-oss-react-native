require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name          = package['name']
  s.version       = package["version"]
  s.summary       = package['description']
  s.author        = { 'albertluo' => 'luozhang002@126.com' }
  s.license       = package['license']
  s.homepage      = package['homepage']
  s.source        = { :git => 'https://github.com/17554265585/aliyun-oss-react-native.git' }
  s.platform      = :ios, '8.0'

  s.source_files  = 'ios/*.{h,m}'

  s.dependency 'React'
  s.dependency 'AliyunOSSiOS'

end