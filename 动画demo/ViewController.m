//
//  ViewController.m
//  动画demo
//
//  Created by apple on 15/6/12.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

    __weak IBOutlet UIButton *bnt;
    IBOutlet UIView *backView;
}
- (IBAction)bntClicked:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillLayoutSubviews
{
    backView.frame=self.view.bounds;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bntClicked:(UIButton *)sender {
    [UIView transitionWithView:self.view duration:1.0 options:UIViewAnimationOptionTransitionCurlDown animations:^{
        [self.view addSubview:backView];
    } completion:^(BOOL finished) {
        [bnt removeFromSuperview];
    }];
}
@end
