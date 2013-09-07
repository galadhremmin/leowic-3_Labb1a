//
//  AldViewController.m
//  leowic-3_Labb1a
//
//  Created by Leonard Wickmark on 9/7/13.
//  Copyright (c) 2013 LTU. All rights reserved.
//

#import "AldViewController.h"

@interface AldViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)changeGreeting:(id)sender;

@end

@implementation AldViewController

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

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *utilisedUserName = self.userName;
    if ([utilisedUserName length] < 1) {
        utilisedUserName = @"World";
    }
    
    NSString *greetingMessage = [NSString stringWithFormat: @"Hello, %@!", utilisedUserName];
    [self.greetingLabel setText: greetingMessage];
}

- (BOOL) textFieldShouldReturn: (UITextField *)field {
    if (field == self.textField) {
        [field resignFirstResponder];
    }
    
    return YES;
}
@end
