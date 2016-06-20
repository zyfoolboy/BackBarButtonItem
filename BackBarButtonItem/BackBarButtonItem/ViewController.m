//
//  ViewController.m
//  BackBarButtonItem
//
//  Created by deyi on 16/6/20.
//  Copyright © 2016年 zyfoolboy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *backButtonImage = [[UIImage imageNamed:@"iconfont-fanhui"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage  forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -backButtonImage.size.height*3) forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.000 green:0.858 blue:1.000 alpha:1.000];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
