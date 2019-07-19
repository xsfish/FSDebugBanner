//
//  FSDebugBannerView.m
//  FSDebugBanner
//
//  Created by fei on 2019/7/18.
//  Copyright © 2019年 xsfish. All rights reserved.
//

#import "FSDebugBannerView.h"

@interface FSDebugBannerView ()

@property (nonatomic, copy) NSString *text;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, strong) UIColor *bannerColor;
@property (nonatomic, assign) CGFloat fixedWidth;

@property (nonatomic, strong) UILabel *bannerLabel;

@end

@implementation FSDebugBannerView

- (instancetype)init {
    return [self initWithText:@"DEBUG"];
}

- (instancetype)initWithText:(NSString *)text {
    return [self initWithText:text textColor:UIColor.whiteColor bannerColor:[UIColor colorWithRed:148/255.0 green:23/255.0 blue:81/255.0 alpha:1.0]];
}

- (instancetype)initWithText:(NSString *)text textColor:(UIColor *)textColor bannerColor:(UIColor *)bannerColor
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.text = text;
        self.textColor = textColor;
        self.bannerColor = bannerColor;
        self.fixedWidth = 60;
        [self initUI];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientationDidChange:) name:UIDeviceOrientationDidChangeNotification object:nil];
    }
    return self;
}

- (void)initUI {
    
    CGFloat screenWidth = CGRectGetWidth(UIScreen.mainScreen.bounds);
    self.frame = CGRectMake(screenWidth - self.fixedWidth, 0, self.fixedWidth, self.fixedWidth);
    self.layer.zPosition = FLT_MAX;
    
    // banner shape
    CAShapeLayer *bannerShape = [[CAShapeLayer alloc] init];
    bannerShape.frame = self.bounds;
    CGMutablePathRef paths = CGPathCreateMutable();
    CGPathMoveToPoint(paths, NULL, 0, 0);
    CGPathAddLineToPoint(paths, NULL, 20, 0);
    CGPathAddLineToPoint(paths, NULL, self.fixedWidth, self.fixedWidth-20);
    CGPathAddLineToPoint(paths, NULL, self.fixedWidth, self.fixedWidth);
    bannerShape.fillColor = [self.bannerColor CGColor];
    bannerShape.path = paths;
    [self.layer addSublayer:bannerShape];
    
    // banner text
    self.bannerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, self.fixedWidth-10, self.fixedWidth-10)];
    self.bannerLabel.text = self.text;
    self.bannerLabel.font = [UIFont boldSystemFontOfSize:12];
    self.bannerLabel.textColor = self.textColor;
    self.bannerLabel.textAlignment = NSTextAlignmentCenter;
    self.bannerLabel.layer.anchorPoint = CGPointMake(0.5, 0.5);
    self.bannerLabel.transform = CGAffineTransformMakeRotation(M_PI_4);
    [self addSubview:self.bannerLabel];
}

- (void)deviceOrientationDidChange:(id)sender {
    CGFloat screenWidth = CGRectGetWidth(UIScreen.mainScreen.bounds);
    self.frame = CGRectMake(screenWidth - self.fixedWidth, 0, self.fixedWidth, self.fixedWidth);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
