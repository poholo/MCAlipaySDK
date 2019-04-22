Pod::Spec.new do |s|
s.name             = "MCAlipaySDK"
s.version          = "15.6.2"
s.summary          = "AlipaySDK的映射"
s.description      = "MCAlipaySDK是对AlipaySDK的映射，使用pod依赖管理，便于开发者快速集成AlipaySDK的支付授权等功能。"
s.license          = 'MIT'
s.author           = { "littleplayer" => "mailjiancheng@163.com" }
s.homepage         = "https://github.com/poholo/MCAlipaySDK"
s.source           = { :git => "https://github.com/poholo/MCAlipaySDK.git", :tag => s.version.to_s }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.default_subspec = 'Base'

#组件对外提供服务接口
s.subspec 'Base' do |sub|
    sub.vendored_frameworks = 'SDK/AlipaySDK.framework'
    sub.resources = ['SDK/*.{bundle}']
end

s.subspec 'NO_UTDID' do |sub|
    sub.vendored_frameworks = 'SDK_NO_UTDID/AlipaySDK.framework'
    sub.resources = ['SDK_NO_UTDID/*.{bundle}']
end

s.xcconfig = {
   'VALID_ARCHS' => 'arm64 x86_64',
   'USER_HEADER_SEARCH_PATHS' => '${PROJECT_DIR}/Pods/**'
}
s.pod_target_xcconfig = {
      'VALID_ARCHS' => 'arm64 x86_64'
}


s.ios.frameworks = 'CoreTelephony', 'SystemConfiguration', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation', 'CFNetwork', 'CoreMotion'
s.ios.libraries = 'z', 'c++'

end
