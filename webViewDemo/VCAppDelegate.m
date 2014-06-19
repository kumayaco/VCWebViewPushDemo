//
//  VCAppDelegate.m
//  webViewDemo
//
//  Created by vincent on 2014/06/19.
//  Copyright (c) 2014年 vc7. All rights reserved.
//

#import "VCAppDelegate.h"
#import "VCViewController.h"

@implementation VCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    VCViewController *viewController = [[VCViewController alloc] init];
    
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
