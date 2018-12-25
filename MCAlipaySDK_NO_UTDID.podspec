Pod::Spec.new do |s|
s.name             = "MCAlipaySDK_NO_UTDID"
s.version          = "15.5.9"
s.summary          = "AlipaySDK的映射"
s.description      = "MCAlipaySDK是对AlipaySDK的映射，使用pod依赖管理，便于开发者快速集成AlipaySDK的支付授权等功能。"
s.license          = 'MIT'
s.author           = { "littleplayer" => "mailjiancheng@163.com" }
s.homepage         = "https://github.com/poholo/MCAlipaySDK"
s.source           = { :git => "https://github.com/poholo/MCAlipaySDK.git", :tag => s.version.to_s }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.vendored_frameworks = 'MCAlipaySDK_NO_UTDID/AlipaySDK.framework'
s.resources = ['SDK/*.{bundle}']
s.ios.frameworks = 'CoreTelephony', 'SystemConfiguration', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'CFNetwork', 'CoreMotion'
s.ios.libraries = 'z', 'c++'

end
