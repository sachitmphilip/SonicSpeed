//
//  ViewController.h
//  SonicSpeed
//
//  Created by enterpi on 12/12/12.
//  Copyright (c) 2012 enterpi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIImageView *sonic;
    UISlider *slider;
    UILabel *myLabel;


}
@property(nonatomic,strong)IBOutlet UIImageView *sonic;
@property(nonatomic,strong)IBOutlet UISlider *slider;
@property(nonatomic,strong)IBOutlet UILabel *myLabel;

- (IBAction)sliderChange:(UISlider *)sender;




@end
