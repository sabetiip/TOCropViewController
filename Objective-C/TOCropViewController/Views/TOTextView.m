//
//  TOTextView.m
//  TOCropViewControllerExample
//
//  Created by Somaye Sabeti on 1/1/18.
//  Copyright © 2018 Tim Oliver. All rights reserved.
//

#import "TOTextView.h"

@implementation TOTextView

- (instancetype) init {
    self = [super init];
    if (self) {
        _msgTextView = [[UITextView alloc] initWithFrame:CGRectMake(4, 20, [UIScreen mainScreen].bounds.size.width - 8, 50)];
        _msgTextView.layer.borderColor = [[UIColor blackColor] CGColor];
        _msgTextView.layer.borderWidth = 2.0;
        _msgTextView.layer.cornerRadius = 20;
        _msgTextView.clipsToBounds = YES;
        _msgTextView.delegate = self;
        _msgTextView.backgroundColor = [UIColor clearColor];
        [_msgTextView setTextColor:[UIColor whiteColor]];
        [_msgTextView setFont:[UIFont fontWithName:@"IRANSansWeb(FaNum)" size:12]];
        [self addSubview:_msgTextView];
        
        _lbl = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 60, 28, 50, 20)];
        [_lbl setText:@"پیام"];
        [_lbl setFont:[UIFont fontWithName:@"IRANSansWeb(FaNum)" size:12]];
        [_lbl setBackgroundColor:[UIColor clearColor]];
        [_lbl setTextColor:[UIColor whiteColor]];
        [self addSubview:_lbl];
    }
    return self;
}

- (NSDictionary*)titleNodeStringOptions
{
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    style.alignment = NSTextAlignmentRight;
    
    return @{ NSFontAttributeName: [UIFont fontWithName:@"IRANSansWeb(FaNum)" size:12],
              NSParagraphStyleAttributeName: style,
              NSForegroundColorAttributeName: [UIColor whiteColor],
              };
}

- (void)textViewDidEndEditing:(UITextView *) textView
{
    if (![textView hasText]) {
        _lbl.hidden = NO;
    }
}

- (void) textViewDidChange:(UITextView *)textView
{
    if(![textView hasText]) {
        _lbl.hidden = NO;
    }
    else{
        _lbl.hidden = YES;
    }
}

@end
