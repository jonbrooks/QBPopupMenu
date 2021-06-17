//
//  QBPopupMenuOverlayView.m
//  QBPopupMenu
//
//  Created by Tanaka Katsuma on 2013/11/24.
//  Copyright (c) 2013年 Katsuma Tanaka. All rights reserved.
//

#import "QBPopupMenuOverlayView.h"

#import "QBPopupMenu.h"

@implementation QBPopupMenuOverlayView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {

    UIView *view = [super hitTest:point withEvent:event];
    
    if (view == self) {
        [self.popupMenu dismissAnimated:YES];
        return nil;
    }
    
    return view;
}

@end
