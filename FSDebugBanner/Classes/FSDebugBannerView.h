//
//  FSDebugBannerView.h
//  FSDebugBanner
//
//  Created by fei on 2019/7/18.
//  Copyright © 2019年 xsfish. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FSDebugBannerView : UIView

- (instancetype)init;
- (instancetype)initWithText:(NSString *)text;
- (instancetype)initWithText:(NSString *)text textColor:(UIColor *)textColor bannerColor:(UIColor *)bannerColor;

@end

NS_ASSUME_NONNULL_END
