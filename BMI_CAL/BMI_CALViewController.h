//
//  BMI_CALViewController.h
//  BMI_CAL
//
//  Created by Hong Eng Khim on 19/5/13.
//  Copyright (c) 2013 com.appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface BMI_CALViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myHeight;
@property (weak, nonatomic) IBOutlet UITextField *myWeight;

@property (weak, nonatomic) IBOutlet UISlider *heightSlider;
@property (weak, nonatomic) IBOutlet UISlider *weightSlider;

@property (weak, nonatomic) IBOutlet UILabel *myBMI;
@property (weak, nonatomic) IBOutlet UILabel *advice;
@property (weak, nonatomic) IBOutlet UILabel *advice2;

@property (weak, nonatomic) IBOutlet UIButton *BMI_Button;


- (IBAction)heightInput:(UISlider *) sender;

- (IBAction)weightInput:(UISlider *) sender;

- (IBAction)calBMI:(UIButton *)sender;

- (IBAction)heightTxtInput:(UITextField *) sender;

- (IBAction)weightTxtInput:(UITextField *) sender;

@end
