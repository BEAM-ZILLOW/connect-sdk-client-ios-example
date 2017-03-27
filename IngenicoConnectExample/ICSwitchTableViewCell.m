//
//  ICSwitchTableViewCell.m
//  IngenicoConnectExample
//
//  Created for Ingenico ePayments on 15/12/2016.
//  Copyright © 2017 Global Collect Services. All rights reserved.
//

#import <IngenicoConnectExample/ICSwitchTableViewCell.h>

@implementation ICSwitchTableViewCell

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        UIScrollView *scrollView = (UIScrollView *)self.contentView.superview;
        if ([scrollView respondsToSelector:@selector(setDelaysContentTouches:)] == YES) {
            ((UIScrollView *)self.contentView.superview).delaysContentTouches = NO;
        }
        
        self.textLabel.font = [UIFont systemFontOfSize:12.0f];
        self.textLabel.numberOfLines = 0;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (self.switchControl != nil) {
        float height = self.contentView.frame.size.height;
        float width = self.contentView.frame.size.width;
        float switchWidth = self.switchControl.frame.size.width;

        self.switchControl.frame = CGRectMake(10, 4, 0, 0);
        self.textLabel.frame = CGRectMake(20 +switchWidth, -4, width - switchWidth - 30, height);
    }
}

- (void)setSwitchControl:(UISwitch *)switchControl
{
    [self.switchControl removeFromSuperview];
    _switchControl = switchControl;
    [self.contentView addSubview:switchControl];
}

@end
