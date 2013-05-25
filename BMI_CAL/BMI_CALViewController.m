//
//  BMI_CALViewController.m
//  BMI_CAL
//
//  Created by Hong Eng Khim on 19/5/13.
//  Copyright (c) 2013 com.appcoda. All rights reserved.
//

#import "BMI_CALViewController.h"
@interface BMI_CALViewController ()
@end

@implementation BMI_CALViewController
@synthesize myHeight;
@synthesize myWeight;
@synthesize heightSlider;
@synthesize weightSlider;
@synthesize myBMI;
@synthesize advice;
@synthesize advice2;
@synthesize BMI_Button;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)heightInput:(UISlider *) sender
{
    [myWeight resignFirstResponder];
    [myHeight resignFirstResponder];

    float height = heightSlider.value/100.0;
    float weight = weightSlider.value;
    float bmi = weight/(height*height);
    
    int heightINT= heightSlider.value;
    int weightINT= weightSlider.value;
    
    myHeight.text = [NSString stringWithFormat:@"%2.0d",heightINT];
    myWeight.text = [NSString stringWithFormat:@"%2.0d",weightINT];
    myBMI.text = [NSString stringWithFormat:@"%.1f",bmi];
    
    if (bmi<18.5) {
        advice.text = @"<   UNDER WEIGHT   >  BMI: Less than 18.5";
        advice2.text = @" ";
//        NSLog(@"%@",advice.text);
//        NSLog(@"%@",advice2.text);
    }
    else if (bmi<25) {
        advice.text = @"<  NORMAL WEIGHT  > BMI: 18.5 - 24.9";
        advice2.text = @" ";
    }
    else if (bmi<30) {
        advice.text = @"<    OVERWEIGHT     >  BMI: 25.0 - 29.9" ;
        advice2.text = @" " ;
    }
    else {
        advice.text = @"<      OBESITY        >  BMI: 30.0 or greater";
        advice2.text = @" ";
    }
    // NSLog(@"%3f", bmi);
}

- (IBAction)weightInput:(UISlider *) sender
{
    [myWeight resignFirstResponder];
    [myHeight resignFirstResponder];

    float height = heightSlider.value/100.0;
    float weight = weightSlider.value;
    float bmi = weight/(height*height);
    
    int heightINT= heightSlider.value;
    int weightINT= weightSlider.value;
    
    myHeight.text = [NSString stringWithFormat:@"%2.0d",heightINT];
    myWeight.text = [NSString stringWithFormat:@"%2.0d",weightINT];
    myBMI.text = [NSString stringWithFormat:@"%.1f",bmi];

    if (bmi<18.5) {
        advice.text = @"<   UNDER WEIGHT   >  BMI: Less than 18.5";
        advice2.text = @" ";
        //        NSLog(@"%@",advice.text);
        //        NSLog(@"%@",advice2.text);
    }
    else if (bmi<25) {
        advice.text = @"<  NORMAL WEIGHT  > BMI: 18.5 - 24.9";
        advice2.text = @" ";
    }
    else if (bmi<30) {
        advice.text = @"<    OVERWEIGHT     >  BMI: 25.0 - 29.9" ;
        advice2.text = @" " ;
    }
    else {
        advice.text = @"<      OBESITY        >  BMI: 30.0 or greater";
        advice2.text = @" ";
    }
}

- (IBAction)calBMI:(UIButton *)sender
{
    [myWeight resignFirstResponder];
    [myHeight resignFirstResponder];

    float height = heightSlider.value/100.0;
    float weight = weightSlider.value;
    float bmi = weight/(height*height);
    
    int heightINT= heightSlider.value;
    int weightINT= weightSlider.value;
    
    myHeight.text = [NSString stringWithFormat:@"%2.0d",heightINT];
    myWeight.text = [NSString stringWithFormat:@"%2.0d",weightINT];
    myBMI.text = [NSString stringWithFormat:@"%.1f",bmi];

    if (bmi<18.5) {
        advice.text = @"<   UNDER WEIGHT   >  BMI: Less than 18.5";
        advice2.text = @"You should put on some weight!";
        //        NSLog(@"%@",advice.text);
        //        NSLog(@"%@",advice2.text);
    }
    else if (bmi<25) {
        advice.text = @"<  NORMAL WEIGHT  > BMI: 18.5 - 24.9";
        advice2.text = @"Congratulation.. You are healthy!";
    }
    else if (bmi<30) {
        advice.text = @"<    OVERWEIGHT     >  BMI: 25.0 - 29.9" ;
        advice2.text = @"You should reduce some weight or  prevent further weight gain. Even a small weight loss will help lower your risk of developing diseases associated with obesity." ;
    }
    else {
        advice.text = @"<      OBESITY        >  BMI: 30.0 or greater";
        advice2.text = @"Oops.. You must reduce weight to prevent heart disease, high blood pressure, type 2 diabetes, gallstones, breathing problems, and certain cancers. ";
    }
}



- (IBAction)heightTxtInput:(UITextField *) sender
{
    float myHeightf = [myHeight.text floatValue];
    float myWeightf = [myWeight.text floatValue];

    heightSlider.value = myHeightf;
    weightSlider.value = myWeightf;
    
    float height = heightSlider.value/100.0;
    float weight = weightSlider.value;
    float bmi = weight/(height*height);
    
    int heightINT= heightSlider.value;
    int weightINT= weightSlider.value;
    
    myHeight.text = [NSString stringWithFormat:@"%2.0d",heightINT];
    myWeight.text = [NSString stringWithFormat:@"%2.0d",weightINT];
    myBMI.text = [NSString stringWithFormat:@"%.1f",bmi];
    
    if (bmi<18.5) {
        advice.text = @"<   UNDER WEIGHT   >  BMI: Less than 18.5";
        advice2.text = @" ";
        //        NSLog(@"%@",advice.text);
        //        NSLog(@"%@",advice2.text);
    }
    else if (bmi<25) {
        advice.text = @"<  NORMAL WEIGHT  > BMI: 18.5 - 24.9";
        advice2.text = @" ";
    }
    else if (bmi<30) {
        advice.text = @"<    OVERWEIGHT     >  BMI: 25.0 - 29.9" ;
        advice2.text = @" " ;
    }
    else {
        advice.text = @"<      OBESITY        >  BMI: 30.0 or greater";
        advice2.text = @" ";
    }
}


- (IBAction)weightTxtInput:(UITextField *) sender
{
    float myHeightf = [myHeight.text floatValue];
    float myWeightf = [myWeight.text floatValue];
    
    heightSlider.value = myHeightf;
    weightSlider.value = myWeightf;
    
    float height = heightSlider.value/100.0;
    float weight = weightSlider.value;
    float bmi = weight/(height*height);
    
    int heightINT= heightSlider.value;
    int weightINT= weightSlider.value;
    
    myHeight.text = [NSString stringWithFormat:@"%2.0d",heightINT];
    myWeight.text = [NSString stringWithFormat:@"%2.0d",weightINT];
    myBMI.text = [NSString stringWithFormat:@"%.1f",bmi];
    
    if (bmi<18.5) {
        advice.text = @"<   UNDER WEIGHT   >  BMI: Less than 18.5";
        advice2.text = @" ";
        //        NSLog(@"%@",advice.text);
        //        NSLog(@"%@",advice2.text);
    }
    else if (bmi<25) {
        advice.text = @"<  NORMAL WEIGHT  > BMI: 18.5 - 24.9";
        advice2.text = @" ";
    }
    else if (bmi<30) {
        advice.text = @"<    OVERWEIGHT     >  BMI: 25.0 - 29.9" ;
        advice2.text = @" " ;
    }
    else {
        advice.text = @"<      OBESITY        >  BMI: 30.0 or greater";
        advice2.text = @" ";
    }
}

@end
