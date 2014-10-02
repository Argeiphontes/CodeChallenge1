//
//  ViewController.m
//  CodeChallenge1
//
//  Created by Christopher on 10/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"
#import "PageTwo.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *leftTextField;
@property (strong, nonatomic) IBOutlet UITextField *rightTextField;
@property (strong, nonatomic) IBOutlet UINavigationItem *titleBar;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *webButton;


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.webButton.enabled = NO;

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCalculateButtonPressed:(id)sender {

    int leftBox = self.leftTextField.text.intValue;
    int rightBox = self.rightTextField.text.intValue;
    int product;

    product = leftBox * rightBox;

    self.titleBar.title= [NSString stringWithFormat:@"%i", product];

    if (product % 5 ==0) {
        self.webButton.enabled = YES;
    }


}

- (IBAction)onWebButtonPressed:(id)sender {

}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PageTwo *result = segue.destinationViewController;
    result.title = self.titleBar.title;
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    EnterAdjectiveViewController *enterName = segue.destinationViewController;
//    enterName.name = self.nameTextField.text;


@end
