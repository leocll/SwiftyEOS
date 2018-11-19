Pod::Spec.new do |s|
  s.name          = "SwiftyEOS"
  s.version       = "0.1"
  s.summary       = "EOS Swift Api"

  s.description   = <<-DESC
  EOS Swift Api
  DESC

  s.homepage      = "https://github.com/leocll/SwiftyEOS.git"
  s.license       = {
    type: "Apache License, Version 2.0",
    file: "LICENSE"
  }

  s.author        = { "leocll" => "leocll@qq.com" }
  s.platform      = :ios, "9.0"

  s.source        = { :git => "https://github.com/leocll/SwiftyEOS.git", :branch => "master" }
  #s.source_files  = "Sources/**/*.{h,m,swift}", "Vendor/**/*.{h,m,c}"

  s.subspec 'Libraries' do |ss|
    ss.source_files = "Libraries/**/*.{h,m,swift}"
  end

  s.subspec 'AnyCodable' do |ss|
    ss.source_files = "Dependencies/AnyCodable/Sources/AnyCodable/**/*.{h,m,c}"
  end

  s.subspec 'Sources' do |ss|
    ss.source_files = "Sources/SwiftyEOS/**/*.{h,m,c}", "Sources/Utils/**/*.{h,m,c}"
    ss.dependency "SwiftyEOS/AnyCodable"
    ss.dependency "SwiftyEOS/Libraries"
  end

  #s.swift_version = "4.0"
  #s.vendored_frameworks = [
  #  "Vendor/secp256k1/secp256k1.framework"
  #]
  #s.preserve_paths = "Modules"
  #s.pod_target_xcconfig = {
  #  "SWIFT_INCLUDE_PATHS" => "$(SRCROOT)/TokenCore/Modules",
  #  "OTHER_LDFLAGS" => "-lObjC",
  #  "SWIFT_OPTIMIZATION_LEVEL" => "-Owholemodule"
  #}

  #s.dependency "CryptoSwift", "0.9.0"
  #s.dependency "BigInt", "3.0.0"
  #s.dependency "GRKOpenSSLFramework"
end
