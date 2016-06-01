//
//  ViewController.m
//  TestSendCaptcha
//
//  Created by 金晓浩 on 16/6/1.
//  Copyright © 2016年 XiaoHaoJin. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+JJSendCaptcha.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.button];
//    [self.button startTime];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonAction {
    [self.button startTime];
}

- (UIButton *)button
{
    if (!_button) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 150, 30)];
        [button setTitle:@"获取验证码" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor yellowColor];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        _button = button;
    }
    return _button;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
