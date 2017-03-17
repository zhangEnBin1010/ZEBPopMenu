//
//  ZEBPopMenuItem.m
//  ZEBPopMenu
//
//  Created by zeb－Apple on 17/3/14.
//  Copyright © 2017年 zeb－Apple. All rights reserved.
//

#import "ZEBPopMenuItem.h"

@implementation ZEBPopMenuItem

+ (instancetype) initWithMenuName:(NSString *)itemName
                            image:(UIImage *)image
                           action:(SEL)action
                           target:(id)target
{
    return [[ZEBPopMenuItem alloc] initWithMenuName:itemName
                                               image:image
                                              action:action
                                              target:target];
}


-(id) initWithMenuName:(NSString *)itemName
                 image:(UIImage *)image
                action:(SEL)action
                target:(id)target
{
    self = [super init];
    if (self) {
        _itemName = itemName;
        _image = image;
        _action = action;
        _target = target;
    }
    
    return self;
}

-(void) performAction
{
    id target = self.target;
    
    if (target && [target respondsToSelector:_action]) {
        
        [target performSelectorOnMainThread:_action withObject:self waitUntilDone:YES];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
