//
//  ViewController.m
//  ParaPara02
//
//  Created by kunren10 on 2014/03/07.
//  Copyright (c) 2014年 Hajime Maeda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic)IBOutlet UIImageView *ivTarget;

@end

@implementation ViewController

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

// ステッパー値変更時
- (IBAction)changeStepper:(UIStepper *)sender {
    
    // double →　int キャスト
    // 画像の表示
    int idx = (int) sender.value;
    
    // %02d 2桁00バディング
    NSString *str = [NSString stringWithFormat:@"images/image%02d.png",idx];
    
    // 画像の張り付け
    self.ivTarget.image = [UIImage imageNamed:str];
    
    
}

@end
