#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint easy_pdf_viewer.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'easy_pdf_viewer'
  s.version          = '1.0.1'
  s.summary          = 'Allows you to generate PNG&#x27;s of specified pages from a provided PDF file source.'
  s.description      = <<-DESC
  Allows you to generate PNG&#x27;s of specified pages from a provided PDF file source.
                         DESC
  s.homepage         = 'https://github.com/kaichii/pdf_viewer'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Kaichi' => 'chyikay@icloud.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
