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
    
    CGFloat btnY = 20.0;
    
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(30, btnY , SCREEN_WIDTH, 100);
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 setTitle:@"自由调整button中img与title的frame" forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"testImg"] forState:UIControlStateNormal];
    btn1.dl_ImageRect = CGRectMake(SCREEN_WIDTH - 100 - 30, 0, 100, 100);
    btn1.dl_TitleRect = CGRectMake(0, 0, SCREEN_WIDTH - 100, 100);
    
    btnY += 120;
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(0, btnY , SCREEN_WIDTH - 30 , 100);
    btn2.backgroundColor = [UIColor orangeColor];
    [btn2 setTitle:@"自由调整button中img与title的frame" forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"testImg"] forState:UIControlStateNormal];
    //    btn2.dl_ImageRect = CGRectMake(375 - 100, 0, 100, 100);
    //    btn2.dl_TitleRect = CGRectMake(0, 0, 100, 100);
    
    btnY += 120;
    
    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(30, btnY , SCREEN_WIDTH - 30 , 100);
    btn3.backgroundColor = [UIColor orangeColor];
    [btn3 setTitle:@"自由调整button中img与title的frame" forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"testImg"] forState:UIControlStateNormal];
    btn3.dl_ImageRect = CGRectMake(0, 0, 60, 60);
    btn3.dl_TitleRect = CGRectMake(60, 40, SCREEN_WIDTH - 30 - 60, 100);
    
    btnY += 120;
    
    UIButton* btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.frame = CGRectMake(0, btnY , SCREEN_WIDTH - 30 , 100);
    btn4.backgroundColor = [UIColor orangeColor];
    [btn4 setTitle:@"自由调整button中img与title的frame" forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"testImg"] forState:UIControlStateNormal];
    btn4.dl_ImageRect = CGRectMake(SCREEN_WIDTH - 30 - 60, 0, 60, 60);
    btn4.dl_TitleRect = CGRectMake(0, 60, SCREEN_WIDTH - 30 - 60, 100);
    
    
    [self.view addSubview:btn1];
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
    [self.view addSubview:btn4];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnAction:(UIButton*)btn{
    NSLog(@"btnAction");
}

@end
