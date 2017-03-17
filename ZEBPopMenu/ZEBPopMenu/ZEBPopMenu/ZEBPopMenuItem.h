//
//  ZEBPopMenuItem.h
//  ZEBPopMenu
//
//  Created by zeb－Apple on 17/3/14.
//  Copyright © 2017年 zeb－Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZEBPopMenuItem : UIView

@property (nonatomic,strong) NSString *itemName;
@property (nonatomic,strong) UIImage *image;
@property (nonatomic,readwrite) SEL action;
@property (nonatomic,weak) id target;

+ (instancetype) initWithMenuName:(NSString *)itemName
                            image:(UIImage *)image
                           action:(SEL)action
                           target:(id)target;

-(void) performAction;

@end
