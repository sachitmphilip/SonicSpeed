//
//  ViewController.m
//  SonicSpeed
//
//  Created by enterpi on 12/12/12.
//  Copyright (c) 2012 enterpi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize sonic,myLabel,slider;

- (void)viewDidLoad
{
    NSArray *image = [NSArray arrayWithObjects:
                      [UIImage imageNamed:@"img1.gif"],
                      [UIImage imageNamed:@"img2.gif"],
                      [UIImage imageNamed:@"img3.gif"],
                      [UIImage imageNamed:@"img4.gif"],
                      [UIImage imageNamed:@"img5.gif"],
                      [UIImage imageNamed:@"img6.gif"],
                      [UIImage imageNamed:@"img7.gif"],
                      [UIImage imageNamed:@"img8.gif"],nil];
    
    sonic.frame = CGRectMake(0, 0, 100, 100);
    sonic.animationImages = image;
    sonic.animationDuration = 0.25;
    sonic.animationRepeatCount = 0;
    
    [sonic startAnimating];
    
                     
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)sliderChange:(UISlider *)sender
{
    myLabel.text = [NSString stringWithFormat:@"slider value = %1.2f",slider.value];
    sonic.animationDuration = slider.value;
    [sonic startAnimating];
    
    
    
}
@end
