//
//  ViewController.h
//  DrectViewProject
//
//  Created by joser on 13-6-19.
//  Copyright (c) 2013年 joser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircularLayOutView.h"
@interface ViewController : UIViewController<CircularLayOutViewDelegate>
{
    int buttonCount;
    float cos_a;
    NSMutableArray *pointArray;
}
@property (weak, nonatomic) IBOutlet UITextField *seconed;
@property (weak, nonatomic) IBOutlet UITextField *first;
@property (weak, nonatomic) IBOutlet UITextField *textFiled;
- (IBAction)buttonClick:(id)sender;

@end
