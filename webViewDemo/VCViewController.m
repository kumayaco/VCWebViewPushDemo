//
//  VCViewController.m
//  webViewDemo
//
//  Created by vincent on 2014/06/19.
//  Copyright (c) 2014年 vc7. All rights reserved.
//

#import "VCViewController.h"

@interface VCViewController () <UIWebViewDelegate>

@end

@implementation VCViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:(CGRect){ 10, 30, 300, 300 }];
    webView.delegate = self;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://apple.com"]]];
    
    [self.view addSubview:webView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

@end
