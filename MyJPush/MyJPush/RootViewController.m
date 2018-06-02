//
//  RootViewController.m
//  MyJPush
//
//  Created by muhlenXi on 2016/11/11.
//  Copyright © 2016年 XiYinjun. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    self.navigationItem.title = @"极光推送";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(pushToNextViewController:)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 事件响应

- (void) pushToNextViewController:(id) sender
{
    ViewController * vc = [[ViewController alloc] init];
    vc.enterWays = @"Push";
    [self.navigationController pushViewController:vc animated:YES];

}

@end
