import Flutter
import path_provider_ios
import UIKit

func registerPlugins(registry: FlutterPluginRegistry) {
    GeneratedPluginRegistrant.register(with: registry)
}

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication
            .LaunchOptionsKey: Any]?
    ) -> Bool {
        GeneratedPluginRegistrant.register(with: self)

        registerOtherPlugins()

        return super
            .application(application,
                         didFinishLaunchingWithOptions: launchOptions)
    }

    func registerOtherPlugins() {
        if !hasPlugin("io.flutter.plugins.pathprovider") {
            FLTPathProviderPlugin
                .register(with: registrar(forPlugin: "io.flutter.plugins.pathprovider")!)
        }
    }
}
