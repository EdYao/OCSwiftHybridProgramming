//
//  ViewController.m
//  OCSwiftComplex
//
//  Created by Charles Yao on 2016/12/19.
//  Copyright © 2016年 Charles Yao. All rights reserved.
//

#import "ViewController.h"
#import "OCSwiftComplex-Swift.h"

@interface ViewController ()

- (IBAction)jumpBtnClicked:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)jumpBtnClicked:(id)sender {
    NewViewController *vc = [[NewViewController alloc]initWithNibName:@"NewViewController" bundle:nil];
    [vc setParentVC:self];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)changeTitle:(NSString *)title {
    [self setTitle:title];
}
@end
