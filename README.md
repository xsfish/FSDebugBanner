# FSDebugBanner

[![CI Status](https://img.shields.io/travis/Fredcom/FSDebugBanner.svg?style=flat)](https://travis-ci.org/Fredcom/FSDebugBanner)
[![Version](https://img.shields.io/cocoapods/v/FSDebugBanner.svg?style=flat)](https://cocoapods.org/pods/FSDebugBanner)
[![License](https://img.shields.io/cocoapods/l/FSDebugBanner.svg?style=flat)](https://cocoapods.org/pods/FSDebugBanner)
[![Platform](https://img.shields.io/cocoapods/p/FSDebugBanner.svg?style=flat)](https://cocoapods.org/pods/FSDebugBanner)

A debug banner is at the top right corner of the view.

![image](https://raw.githubusercontent.com/xsfish/FSDebugBanner/master/Example/Screenshot/01.png)
![image](https://raw.githubusercontent.com/xsfish/FSDebugBanner/master/Example/Screenshot/02.png)

## Requirements

* iOS8.0+

## Installation

FSDebugBanner is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FSDebugBanner'
```

## Usage

Objective-C
```Objective-C
@import FSDebugBanner;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self.window addSubview:[[FSDebugBannerView alloc] initWithText:@"DEBUG"]];
    return YES;
}
```

swift
```Swift
import FSDebugBanner

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window?.addSubview(FSDebugBannerView(text: "DEBUG"))
        return true
    }
```

## Author

xsfish

## License

FSDebugBanner is available under the MIT license. See the LICENSE file for more info.
