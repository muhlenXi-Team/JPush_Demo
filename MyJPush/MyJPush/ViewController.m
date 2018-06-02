//
//  ViewController.m
//  MyJPush
//
//  Created by muhlenXi on 2016/11/11.
//  Copyright © 2016年 XiYinjun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ([self.enterWays isEqualToString:@"Present"]) {
        
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(backToRootViewController:)];
        
        self.navigationItem.title = @"by Present";
    } else {
        self.navigationItem.title = @"by Push";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 事件响应

- (void) backToRootViewController:(id) sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
