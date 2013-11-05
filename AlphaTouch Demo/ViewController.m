//
//  ViewController.m
//  AlphaTouch Demo
//
//  Created by Jon-Paul Lussier on 11/2/13.
//  Copyright (c) 2013 Jon-Paul Lussier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
    
    _fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    [_fiftyPercentButton setTitle:@"Tap me!" forState:UIControlStateNormal];
    [_fiftyPercentButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    [self.view addSubview:_fiftyPercentButton];
    
    [_fiftyPercentButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];

    _hundredPercentButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    _hundredPercentButton.frame = CGRectMake(100, 400, 100, 44);
    [_hundredPercentButton setTitle:@"Tap me!" forState:UIControlStateNormal];
    [_hundredPercentButton setTitle:@"Ouch!" forState:UIControlStateHighlighted];
    [self.view addSubview:_hundredPercentButton];
    
    [_hundredPercentButton addTarget:self
                            action:@selector(buttonPressed:)
                  forControlEvents:UIControlEventTouchUpInside];
    
    
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.backgroundColor = [UIColor clearColor];
    firstLabel.text = @"Hello, this is my app.";
    [self.view addSubview:firstLabel];
}

-(void)buttonPressed:(UIButton *)sender
{
    if([sender isEqual:_fiftyPercentButton]){
        self.view.alpha = .5;
    } else {
        self.view.alpha = 1;
    }

/** [sender removeFromSuperview]; */
}

-(void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Started touching the screen!");
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"End touch event!");
}

@end
