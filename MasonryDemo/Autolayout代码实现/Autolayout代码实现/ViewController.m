//
//  ViewController.m
//  Autolayout代码实现
//
//  Created by Biao on 16/5/12.
//  Copyright © 2016年 Bobby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor = [UIColor blueColor];
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueView];
    
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:redView];
    

    
    /**
     *  @author Biao
     *
     *  蓝色View约束
     */
    //添加高度约束为40
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0.0 constant:40];
    [blueView addConstraint:heightConstraint];
    
    //添加左边约束:blueView的左边距离父控件的左边有10的间距
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:10];
    [self.view addConstraint:leftConstraint];
    
    //添加右边约束:blueView的右边距离父控件右边距离有10的间距
    NSLayoutConstraint * rightConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:-10];
    [self.view addConstraint:rightConstraint];
    
    
    //添加顶部约束:blueView的顶部距离父控件顶部有10间距
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:20];
    [self.view addConstraint:topConstraint];
    
    /**
     *  @author Biao
     *
     *  红色View
     */
    //添加高度约束:蓝色等高
    NSLayoutConstraint *heightConstraitn2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0];
    [self.view addConstraint:heightConstraitn2];
    
    //添加左边约束:redView的左边 == 父控件的中心X
    NSLayoutConstraint * leftConstraint2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    [self.view addConstraint:leftConstraint2];
    
    //添加顶部约束:redView的顶部距离blueView的顶部约束有20间距
    NSLayoutConstraint *topConstraint2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:20];
    [self.view addConstraint:topConstraint2];
    
    //添加右边约束:redView的右边 == blueView的右边
    NSLayoutConstraint *rightConstraint2 = [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    [self.view addConstraint:rightConstraint2];
}

@end
