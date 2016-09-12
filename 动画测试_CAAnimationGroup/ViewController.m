//
//  ViewController.m
//  动画测试_CAAnimationGroup
//
//  Created by WKY on 16/9/8.
//  Copyright © 2016年 WKY. All rights reserved.
//

#import "ViewController.h"
#import "PullView.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong)UIImageView *imageView;
@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)PullView *pullView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    
    
    self.pullView = [[PullView alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame)/2 - 25, -34, 50, 30)];
    
//    [self.view addSubview:self.pullView];
    
    
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height) style:(UITableViewStylePlain)];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
    [self.tableView addSubview:self.pullView];
    
    
    /*
    CGSize finalSize = CGSizeMake(CGRectGetWidth(self.view.frame), 400);
    CGFloat layerHeight = finalSize.height * 0.2;
    CAShapeLayer *layer = [CAShapeLayer layer];
    UIBezierPath *bezier = [UIBezierPath bezierPath];
    [bezier moveToPoint:CGPointMake(0, finalSize.height - layerHeight)];
    [bezier addLineToPoint:CGPointMake(0, finalSize.height - 1)];
    [bezier addLineToPoint:CGPointMake(finalSize.width, finalSize.height - 1)];
    [bezier addLineToPoint:CGPointMake(finalSize.width, finalSize.height - layerHeight)];
    
    [bezier addQuadCurveToPoint:CGPointMake(0, finalSize.height - layerHeight) controlPoint:CGPointMake(finalSize.width/2, finalSize.height - layerHeight - 40)];
    
    layer.path = bezier.CGPath;
    layer.fillColor = [UIColor blackColor].CGColor;
    [self.view.layer addSublayer:layer];
    */
    
    
    
    
    /*
    self.imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"bt_redlines"]];
    self.imageView.frame = CGRectMake(100, 100, self.imageView.frame.size.width, self.imageView.frame.size.height);
    [self.view addSubview:self.imageView];
    
    
    UIBezierPath *movePath = [UIBezierPath bezierPath];
    [movePath moveToPoint:CGPointMake(100, 10)];
    [movePath addQuadCurveToPoint:CGPointMake(100, 200) controlPoint:CGPointMake(200, 100)];
    
    
    // 关键帧动画
    CAKeyframeAnimation *posAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    posAnimation.path = movePath.CGPath;
    posAnimation.removedOnCompletion = YES;
    
    // 缩放动画
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
    scaleAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
    scaleAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 0.1)];
    scaleAnimation.removedOnCompletion = YES;
    
    // 透明动画
    CABasicAnimation *opacityAnimation = [CABasicAnimation animationWithKeyPath:@"alpha"];
    opacityAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    opacityAnimation.toValue = [NSNumber numberWithFloat:0.0];
    opacityAnimation.removedOnCompletion = YES;
    
    
    // 动画组
    CAAnimationGroup *animGroup = [CAAnimationGroup animation];
    animGroup.animations = [NSArray arrayWithObjects:posAnimation,scaleAnimation,opacityAnimation, nil];
    animGroup.duration = 3;
    
    [self.imageView.layer addAnimation:animGroup forKey:nil];
    */
    
    
    
    
    /*
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeStart = 0;
    shapeLayer.strokeEnd = 1;
    
//    shapeLayer.frame = CGRectMake(100, 100, 150, 100);
//    shapeLayer.backgroundColor = [UIColor blackColor].CGColor;
//    [self.view.layer addSublayer:shapeLayer];
    
//    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(100, 100, 150, 100)];
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(100, 100, 150, 100) cornerRadius:50];
    
//    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:self.view.center radius:50 startAngle:0.0 endAngle:M_PI*2 clockwise:YES];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 300)];
    [path addCurveToPoint:CGPointMake(300, 300) controlPoint1:CGPointMake(75, 150) controlPoint2:CGPointMake(150+75, 450)];
    
    shapeLayer.path = path.CGPath;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.strokeColor = [UIColor brownColor].CGColor;
    [self.view.layer addSublayer:shapeLayer];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.fromValue = @0;
    animation.toValue = @1;
    animation.duration = 5.0;
    [shapeLayer addAnimation:animation forKey:@"strokeEnd"];
    
    
    CABasicAnimation *animation3 = [CABasicAnimation animationWithKeyPath:@"lineWidth"];
    animation3.fromValue = @1;
    animation3.toValue = @10;
    animation3.duration = 5.0;
    [shapeLayer addAnimation:animation3 forKey:@"lineWidth"];
    */
    
    
    
    /*
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(150, 100, 50, 30)];
    label.backgroundColor = [UIColor brownColor];
    [self.view addSubview:label];
    
    
    CASpringAnimation *spring = [CASpringAnimation animationWithKeyPath:@"position.x"];
    spring.damping = 6;
    spring.stiffness = 100;
    spring.mass = 1;
    spring.initialVelocity = 0;
    spring.duration = spring.settlingDuration;
    spring.fromValue = [NSNumber numberWithDouble:label.layer.position.x];
    spring.toValue = [NSNumber numberWithDouble:label.layer.position.x + 50];
    [label.layer addAnimation:spring forKey:spring.keyPath];
    */
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Photos";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = @"text";
    cell.textLabel.textColor = [UIColor whiteColor];
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

//    NSLog(@"11111");
    [self.pullView animationWith:scrollView.contentOffset.y];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
