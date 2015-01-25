//
//  SKActionsheet.h
//  SKActionSheet
//
//  Created by Adit Hasan on 1/24/15.
//  Copyright (c) 2015 Adit Hasan. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface SKActionsheet : NSObject<UIActionSheetDelegate>

-(id)initWithTitle:(NSString *)title delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...;
-(void)showInView:(UIView *)view withCompletionHandler:(void(^)(NSString *buttonTitle, NSInteger buttonIndex))handler;

@end
