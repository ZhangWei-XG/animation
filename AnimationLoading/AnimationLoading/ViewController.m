//
//  ViewController.m
//  AnimationLoading
//
//  Created by yrc on 2018/4/12.
//  Copyright © 2018年 zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 需要圆视图
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectZero];
    
    view.center = self.view.center;
    
    [self.view addSubview:view];
    
    
    
    
    
    // 线的路径
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 线的路径
    
    CGPoint viewCenter = CGPointMake(view.frame.size.width / 2.0, view.frame.size.height / 2.0); // 画弧的中心点，相对于view
    
    [path addArcWithCenter:viewCenter radius:50 startAngle:0.0 endAngle:M_PI*1.5 clockwise:YES];
    
    CAShapeLayer *pathLayer = [CAShapeLayer layer];
    
    pathLayer.lineWidth = 5;
    
    pathLayer.strokeColor = [UIColor redColor].CGColor;
    
    pathLayer.fillColor = nil; // 默认为blackColor
    
    pathLayer.path = path.CGPath;
    
    [view.layer addSublayer:pathLayer];
    
    
    
    
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    animation.duration = 1.5f;   // 持续时间
    
    animation.fromValue = @(0); // 从 0 开始
    
    animation.toValue = @(2*M_PI);   // 到 1 结束
    
    // 保持动画结束时的状态
    
    animation.removedOnCompletion = NO;
    
    animation.fillMode = kCAFillModeForwards;
    
    animation.repeatCount = HUGE_VALF;
    
    // 动画缓慢的进入，中间加速，然后减速的到达目的地。
    
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    [pathLayer addAnimation:animation forKey:@"rotationAnimation"];
    
    
    
    // 线的路径
    
    UIBezierPath *path2 = [UIBezierPath bezierPath];
    
    // 线的路径
    
    CGPoint viewCenter2 = CGPointMake(view.frame.size.width / 2.0, view.frame.size.height / 2.0); // 画弧的中心点，相对于view
    
    [path2 addArcWithCenter:viewCenter2 radius:25 startAngle:0.0 endAngle:M_PI*1.5 clockwise:YES];
    
    CAShapeLayer *pathLayer2 = [CAShapeLayer layer];
    
    pathLayer2.lineWidth = 5;
    
    pathLayer2.strokeColor = [UIColor greenColor].CGColor;
    
    pathLayer2.fillColor = nil; // 默认为blackColor
    
    pathLayer2.path = path2.CGPath;
    
    [view.layer addSublayer:pathLayer2];
    
    
    
    CABasicAnimation *animation2 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    animation2.duration = 1.5f;   // 持续时间
    
    animation2.toValue = @(0); // 从 0 开始
    
    animation2.fromValue = @(2*M_PI);   // 到 1 结束
    
    // 保持动画结束时的状态
    
    animation2.removedOnCompletion = NO;
    
    animation2.fillMode = kCAFillModeForwards;
    
    animation2.repeatCount = HUGE_VALF;
    
    // 动画缓慢的进入，中间加速，然后减速的到达目的地。
    
    animation2.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    [pathLayer2 addAnimation:animation2 forKey:@"rotationAnimation"];
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
