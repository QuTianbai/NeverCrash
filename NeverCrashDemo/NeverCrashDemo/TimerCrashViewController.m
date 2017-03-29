//
//  TimerCrashViewController.m
//  NeverCrashDemo
//
//  Created by knewcloud on 2017/3/28.
//  Copyright © 2017年 jseanj. All rights reserved.
//

#import "TimerCrashViewController.h"

@interface TimerCrashViewController ()

@end

@implementation TimerCrashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(timerInvoke) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

- (void)timerInvoke {
    NSLog(@"%s", __func__);
}

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
