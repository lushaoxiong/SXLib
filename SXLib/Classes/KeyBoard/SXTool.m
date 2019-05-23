//
//  SXTool.m
//  Pods-SXLib_Example
//
//  Created by Lsx on 2019/5/22.
//

#import "SXTool.h"

@implementation SXTool

+ (BOOL)isHairHead {
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
        return self.safeAreaInset.left > 0.0f;
    }else {
        // ios12 非刘海屏状态栏 20.0f
        return self.safeAreaInset.top > 20.0f;
    }
}
+ (UIWindow *)keyWindow {
    return [UIApplication sharedApplication].keyWindow;
}
+ (UIEdgeInsets)safeAreaInset {
    if (@available(iOS 11.0, *)) {
        if (self.keyWindow) {
            return self.keyWindow.safeAreaInsets;
        }
    }
    return UIEdgeInsetsZero;
}

@end
