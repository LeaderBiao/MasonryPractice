//
//  ViewController.m
//  Autolayout代码实现-VFL
//
//  Created by Biao on 16/5/25.
//  Copyright © 2016年 Bobby. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //test1
    [self test2];
    
    
}



- (void)test2
{
    //间距
    NSNumber *margin = @20;
    //高度
    NSNumber *height = @40;
    /**
     *  @author Biao
     *
     *  蓝色View and 红色View
     */
    UIView *blueView = [UIView new];
    blueView.backgroundColor = [UIColor blueColor];
    //不要将AutoresizingMark转成Autolayout的约束
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueView];
    
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
    //不要将AutoresizingMark转成Autolayout的约束
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:redView];
    
    
    
    //添加水平方向的约束
    NSString *vfl = @"H:|-margin-[blueView]-margin-[redView(==blueView)]-margin-|";
    NSDictionary *views = NSDictionaryOfVariableBindings(blueView,redView);
    NSDictionary *mertrics = NSDictionaryOfVariableBindings(margin);
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:vfl options:NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom metrics:mertrics views:views];
    [self.view addConstraints:constraints];
    
    //添加竖直方向的间距
    NSString *vfl2 = @"V:[blueView(height)]-margin-|";
    NSDictionary *mertrics2 = NSDictionaryOfVariableBindings(margin,height);
    NSArray *constraints2 = [NSLayoutConstraint constraintsWithVisualFormat:vfl2 options:kNilOptions metrics:mertrics2 views:views];
    [self.view addConstraints:constraints2];
    
    
    
    
}

- (void)test1
{
    
    /**
     *  @author Biao
     *
     *  蓝色View
     */
    UIView *blueView = [UIView new];
    blueView.backgroundColor = [UIColor blueColor];
    //不要将AutoresizingMark转成Autolayout的约束
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueView];
    
    //添加水平方向的约束
    NSString *vfl = @"H:|-20-[blueView]-20-|";
    NSDictionary *views = @{@"blueView":blueView};
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:vfl options:kNilOptions metrics:nil views:views];
    [self.view addConstraints:constraints];
    
    //添加竖直方向的间距
    NSString *vfl2 = @"V:|-20-[blueView(40)]";
    NSDictionary *views2 = @{@"blueView":blueView};
    NSArray *constraintsBlue = [NSLayoutConstraint constraintsWithVisualFormat:vfl2 options:kNilOptions metrics:nil views:views2];
    [self.view addConstraints:constraintsBlue];
    
    
    
    
    /**
     *  @author Biao
     *
     *  蓝色View
     */
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
    //不要将AutoresizingMark转成Autolayout的约束
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:redView];
    
    //添加水平方向的约束
    NSString *vfl3 = @"H:|-40-[redView]-40-|";
    NSDictionary *views3 = @{@"redView":redView};
    NSArray *constraintsRed = [NSLayoutConstraint constraintsWithVisualFormat:vfl3 options:kNilOptions metrics:nil views:views3];
    [self.view addConstraints:constraintsRed];
    
    //添加竖直方向的间距
    NSString *vfl4 = @"V:|-80-[redView(40)]";
    NSDictionary *views4 = @{@"redView":redView};
    NSArray *constraints4 = [NSLayoutConstraint constraintsWithVisualFormat:vfl4 options:kNilOptions metrics:nil views:views4];
    [self.view addConstraints:constraints4];
    
    
    /**
     *  @author Biao
     *
     *  黄色View
     */
    UIView *yellowView = [UIView new];
    yellowView.backgroundColor = [UIColor yellowColor];
    yellowView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:yellowView];
    
    //添加水平方向的约束
    NSString *vfl5 = @"H:|-60-[yellowView]-60-|";
    NSDictionary *views5 = @{@"yellowView":yellowView};
    NSArray *constraintsYellow = [NSLayoutConstraint constraintsWithVisualFormat:vfl5 options:kNilOptions metrics:nil views:views5];
    [self.view addConstraints:constraintsYellow];
    
    
    //添加竖直方向的间距
    NSString *vfl6 = @"V:|-140-[yellowView(40)]";
    NSDictionary *views6 = @{@"yellowView":yellowView};
    NSArray *constraints6 = [NSLayoutConstraint constraintsWithVisualFormat:vfl6 options:kNilOptions metrics:nil views:views6];
    [self.view addConstraints:constraints6];
}


@end
