//
//  ViewController.m
//  SKActionSheet
//
//  Created by Adit Hasan on 1/24/15.
//  Copyright (c) 2015 Adit Hasan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)SKActionsheet *sheet;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ShowActionSheet:(id)sender {
    
    
    _sheet = [[SKActionsheet alloc] initWithTitle:@"SKActionsheet" delegate:nil
                                              cancelButtonTitle:@"Button Cancel"
                                              destructiveButtonTitle:nil
                                              otherButtonTitles:@"Other Button 0",@"Other Button 1",@"Other Button 2",nil];
    [_sheet showInView:self.view withCompletionHandler:^(NSString *buttonTitle, NSInteger buttonIndex) {
    
    
        NSLog(@"Button Index - %ld",(long)buttonIndex);
    }];
    
}

@end
