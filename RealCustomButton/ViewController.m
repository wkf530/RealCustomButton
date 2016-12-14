//
//  ViewController.m
//  RealCustomButton
//
//  Created by dolin on 16/12/14.
//  Copyright © 2016年 dolin. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+DLButton.h"

#define SCREEN_HEIGHT      [[UIScreen mainScreen] bounds].size.height
#define SCREEN_WIDTH       [[UIScreen mainScreen] bounds].size.width

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // testBtn
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, (SCREEN_HEIGHT - 100) / 2 , SCREEN_WIDTH - 30 , 100);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"hello" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"testImg"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    btn.dl_ImageRect = CGRectMake(375 - 100, 0, 100, 100);
    btn.dl_TitleRect = CGRectMake(0, 0, 100, 100);
    
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnAction {
    NSLog(@"btnAction");
}

@end
