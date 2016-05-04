//
//  LJZZanViewController.m
//  AnimationSet
//
//  Created by 李金柱 on 16/4/29.
//  Copyright © 2016年 likeme. All rights reserved.
//

#import "LJZZanViewController.h"

@interface LJZZanViewController ()

- (IBAction)zanEvent:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation LJZZanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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


- (IBAction)zanEvent:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    [sender setImage:[UIImage imageNamed:(sender.selected? @"btn_like":@"btn_unlike")] forState:UIControlStateNormal];
    self.image.layer.contents = (id)[UIImage imageNamed:(sender.selected? @"btn_like":@"btn_unlike")].CGImage;
    
    
    CAKeyframeAnimation *key = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    key.values = @[@(0.1),@(1.0),@(1.5)];
    key.keyTimes = @[@(0.0),@(0.5),@(0.8),@(1.0)];
    key.calculationMode = kCAAnimationLinear;
    [sender.layer addAnimation:key forKey:@"zan"];
    [self.image.layer addAnimation:key forKey:@"zan"];
    
}
@end
