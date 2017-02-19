//
//  ViewController.m
//  UILabel设置多种字体颜色大小
//
//  Created by 薛涛 on 17/2/16.
//  Copyright © 2017年 Xuetao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, self.view.bounds.size.width-20, 100)];
    label.numberOfLines = 0;
    label.attributedText = [self attributedStringFromLabel];;
    [self.view addSubview:label];
}

- (NSMutableAttributedString *)attributedStringFromLabel {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:@"利用AttributedString 可以设置label中不同文字的颜色大小"];
    
    // 颜色
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(2, 17)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(17, 21)];
    // 大小
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18] range:NSMakeRange(0, 2)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:22] range:NSMakeRange(2, 17)];
    [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:12] range:NSMakeRange(17, 21)];
    
    return attributedString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
