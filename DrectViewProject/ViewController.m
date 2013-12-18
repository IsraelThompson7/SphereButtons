//
//  ViewController.m
//  DrectViewProject
//
//  Created by joser on 13-6-19.
//  Copyright (c) 2013年 joser. All rights reserved.
//

#import "ViewController.h"
#import "XYPoint.h"
#import "CircularLayOutView.h"
#import "RectButtonView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CircularLayOutView *manger=[[CircularLayOutView alloc] init];
    //manger.tager=self;
    manger.MyDelegate=self;
    XYPoint *centerPoint=[[XYPoint alloc] init];
    centerPoint.xPoint=160;
    centerPoint.yPoint=230;
    manger.centerPoint=centerPoint;
    XYPoint *buttonWeightAndHeight=[[XYPoint alloc] init];
    buttonWeightAndHeight.xPoint=40;
    buttonWeightAndHeight.yPoint=40;
    manger.buttonWeightAndHeight=buttonWeightAndHeight;
    manger.radius=100;
    NSArray *buttonNameArray=@[@"按钮1",@"按钮2",@"按钮3",@"按钮4",@"按钮5",@"按钮6"];
    manger.buttonCount=6;
    manger.buttonIndexNameArray=buttonNameArray;
    
    [manger creatUIToView:self.view target:nil];
    
    [self.view addSubview:manger];
//    RectButtonView *view=[[RectButtonView alloc] initWithFrame:CGRectMake(40, 400, 50, 50)];
//    [self.view addSubview:view];
//    
//    
//    CGContextRef ref=UIGraphicsGetCurrentContext();
//    CGContextAddEllipseInRect(ref, CGRectMake(40, 400, 50, 50));
//    CGContextStrokePath(ref);
//    CGContextFillPath(ref);
    //[self creatUIToView:self.view];
   
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)buttonClick:(NSString *)buttonName
{
    NSLog(@"你点击了%@",buttonName);

}
@end
