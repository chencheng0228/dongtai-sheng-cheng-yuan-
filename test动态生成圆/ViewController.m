//
//  ViewController.m
//  test动态生成圆
//
//  Created by admin on 15-3-2.
//  Copyright (c) 2015年 ___CC___. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.slider = [[UISlider alloc] initWithFrame:CGRectMake(0, 250, 200, 5)];
    [self.view addSubview:self.slider];
    self.slider.minimumValue = 0;
    self.slider.maximumValue = 1.0f;
    self.slider.value = 0;
    [self.slider addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    
    self.progress = [[TestView alloc] initWithFrame:CGRectMake(70, 50, 100, 100)];
    self.progress.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.progress];
    self.progress.trackColor = [UIColor blackColor];
    self.progress.progressColor = [UIColor orangeColor];
    self.progress.progress = self.slider.value;
    self.progress.progressWidth = 20;
}

-(void)change:(id)slider
{
    UISlider *slider1 = slider;
    self.progress.progress = slider1.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
