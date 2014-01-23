//
//  ViewController.m
//  denden
//
//  Created by 石原　知典 on 13/11/14.
//  Copyright (c) 2013年 univercity of kitakyusyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    startInput = YES;
    currentValue = 0;
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)numberButtonPressed:(id)sender
{
    UIButton *b =(UIButton *)sender;
    if(startInput){
        if(b.tag == 0)return ;
        label.text =[NSString stringWithFormat:@"%d",b.tag];
        startInput=NO;
    }else{
        label.text = [NSString stringWithFormat:@"%@%d",label.text, b.tag];
    }
    
    
    }
-(IBAction)clearButtonPressed:(id)sender
{
    label.text =@"0";
    startInput =YES;
}
-(IBAction)opButtonPressed:(id)sender
{
    UIButton *b=(UIButton *)sender;
    currentValue = [label.text intValue];
    
    operation = b.tag;
    startInput = YES;        
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)equalButtonPressed:(id)sender
{
    if( operation == 0 ){
    currentValue += [label.text intValue];
} else if( operation == 1 ){
    currentValue -= [label.text intValue];
} else if( operation == 2 ){
    currentValue *= [label.text intValue];
}
else if( operation == 3){
    currentValue /= [label.text intValue];
}
    
    
    
    
    
    // 表示の更新
    label.text = [NSString stringWithFormat:@"%d", currentValue];
    startInput = YES;
}
@end
