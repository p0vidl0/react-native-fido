require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-fido2"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-fido2
                   DESC
  s.homepage     = "https://github.com/Emad-Salah/react-native-fido2"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Emad Kheir" => "emads14@gmail.com" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/Emad-Salah/react-native-fido2.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "WebAuthnKit", :git => "https://github.com/Emad-salah/WebAuthnKit-iOS.git", :commit => "cfe42d8f36c5eddba2dc2db2a9a72f54d25cc9e9"
  # ...
  # s.dependency "..."
end

