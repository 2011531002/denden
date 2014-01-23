//
//  ViewController.h
//  denden
//
//  Created by 石原　知典 on 13/11/14.
//  Copyright (c) 2013年 univercity of kitakyusyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
IBOutlet UILabel *label;
    BOOL startInput;
    int currentValue;
    int operation;
}
-(IBAction)opButtonPressed:(id)sender;
-(IBAction)clearButtonPressed:(id)sender;
-(IBAction)numberButtonPressed:(id)sender;
-(IBAction)equalButtonPressed:(id)sender;
@end

