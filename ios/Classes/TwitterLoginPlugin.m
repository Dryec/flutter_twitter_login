#import "TwitterLoginPlugin.h"

@implementation TwitterLoginPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"com.roughike/flutter_twitter_login"
            binaryMessenger:[registrar messenger]];
  TwitterLoginPlugin *instance = [[TwitterLoginPlugin alloc] init];
  [registrar addApplicationDelegate:instance];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall *)call
                  result:(FlutterResult)result {
    result(FlutterMethodNotImplemented);
}

@end
