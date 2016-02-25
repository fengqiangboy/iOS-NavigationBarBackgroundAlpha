//
//  UIImage+Extention.h
//  2-SetNavigationBarBackgroundColorAlpha
//
//  Created by 奉强 on 16/2/25.
//  Copyright © 2016年 奉强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extention)

/**
 *  通过颜色生成纯色图片
 *
 *  @param color 颜色
 *  @param size  图片大小
 *
 *  @return 生成的图片
 */
+ (UIImage *)imageFromColor:(UIColor *)color imageSize:(CGSize)size;

/**
 *  改变图片透明度
 *
 *  @param alpha 透明度
 *  @param image 图片
 *
 *  @return 改变之后的图片
 */
+ (UIImage *)imageByApplyingAlpha:(CGFloat)alpha image:(UIImage*)image;

@end
