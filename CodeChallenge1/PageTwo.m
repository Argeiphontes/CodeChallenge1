//
//  PageTwo.m
//  CodeChallenge1
//
//  Created by Christopher on 10/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "PageTwo.h"
#import "ViewController.h"

@interface PageTwo () <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation PageTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"http//www.mobilemakers.co";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
}

//- (void)webViewDidStartLoad:(UIWebView *)webView {
//        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
//}
//
//- (void)webViewDidFinishLoad:(UIWebView *)webView{
//        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
