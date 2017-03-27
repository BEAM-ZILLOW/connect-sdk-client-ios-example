//
//  ICPickerViewTableViewCell.h
//  IngenicoConnectExample
//
//  Created for Ingenico ePayments on 15/12/2016.
//  Copyright © 2017 Global Collect Services. All rights reserved.
//

#import <IngenicoConnectExample/ICTableViewCell.h>
#import <IngenicoConnectExample/ICPickerView.h>

@interface ICPickerViewTableViewCell : ICTableViewCell

@property (strong, nonatomic) ICPickerView *pickerView;
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier;

@end
