#
# Be sure to run `pod lib lint HTSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HTSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/hantao-flurrydev/HTSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hantao-flurrydev' => 'hantao.yang@verizonmedia.com' }
  s.source           = { :git => 'https://github.com/hantao-flurrydev/HTSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.subspec 'CalculateSDK' do |ss|
    ss.source_files = [
      'CalculateSDK/CalculateSDK.h',
      'CalculateSDK/CalculateSDKEmpty.m',
    ]

    ss.platform   = :ios, '13.0'
    ss.frameworks = 'Foundation'
    ss.vendored_libraries = "CalculateSDK/libCalculateSDK.a"
  end
end
