//
//  ViewController.m
//  1-SetNavigationBarAlpha
//
//  Created by 奉强 on 16/2/25.
//  Copyright © 2016年 奉强. All rights reserved.
//

#import "ViewController.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setScrollView];
}

#pragma mark 设置scrollView
- (void)setScrollView {
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    UIImage *image = [UIImage imageNamed:@"111.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, (image.size.width/WIDTH)*HEIGHT)];
    self.scrollView.contentSize = CGSizeMake(0, imageView.bounds.size.height);
    self.scrollView.delegate = self;
    imageView.image = image;
    
    [self.scrollView addSubview:imageView];
    
    
    [self.view addSubview:self.scrollView];
}

#pragma mark scrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //改变透明度
    self.navigationController.navigationBar.alpha = scrollView.contentOffset.y / 200.0f;
}



@end
