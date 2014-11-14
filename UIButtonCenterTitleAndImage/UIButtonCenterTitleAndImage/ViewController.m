//
//  ViewController.m
//  UIButtonSetEdgeInsets
//
//  Created by Qi Wang on 11/14/14.
//  Copyright (c) 2014 qiwang. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+CenterImageAndTitle.h"

#define kScreenHeight [[UIScreen mainScreen] bounds].size.height      //屏幕高度
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width      //屏幕宽度

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0; i< 6; i++)
    {
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        button1.frame = CGRectMake(60, 80+i*60, kScreenWidth-60*2, 45);
        button1.tag = i;
        button1.backgroundColor = [UIColor yellowColor];
        button1.titleLabel.font = [UIFont systemFontOfSize:15];
        [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"img_up"] forState:UIControlStateNormal];
        [button1 setTitle:@"测试文本" forState:UIControlStateNormal];
        [button1 addTarget:self action:@selector(testAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button1];
        
        switch (i)
        {
            case 0:
            {
                //系统默认图片在左，文字在右，间隔为0
            }
                break;
                
            case 1:
            {
                //上下居中，图片在上，文字在下
                [button1 verticalCenterImageAndTitle:10.0f];
            }
                break;
                
            case 2:
            {
                //左右居中，文字在左，图片在右
                [button1 horizontalCenterTitleAndImage:50.0f];
            }
                break;
                
            case 3:
            {
                //左右居中，图片在左，文字在右
                [button1 horizontalCenterImageAndTitle:50.0f];
            }
                break;
                
            case 4:
            {
                //文字居中，图片在左边
                [button1 horizontalCenterTitleAndImageLeft:50.0f];
            }
                break;
                
            case 5:
            {
                //文字居中，图片在右边
                [button1 horizontalCenterTitleAndImageRight:50.0f];
            }
                break;
                
            default:
                break;
        }
    }
}

- (void)testAction:(UIButton *)sender
{
    NSLog(@"testAction:%ld", (long)sender.tag);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
