//
//  ViewController.h
//  AlphaTouch Demo
//
//  Created by Jon-Paul Lussier on 11/2/13.
//  Copyright (c) 2013 Jon-Paul Lussier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;

-(void)buttonPressed:(UIButton *)sender;

@end
