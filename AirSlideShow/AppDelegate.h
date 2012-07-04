//
//  AppDelegate.h
//  AirSlideShow
//
//  Created by Deemag Infotech on 03/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    BOOL                            iOS5;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (nonatomic, assign)       BOOL                                        iOS5;
// Function to detect if the device is an iPad.
- (BOOL) isiPad;

@end
