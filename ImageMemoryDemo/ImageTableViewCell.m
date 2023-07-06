//
//  ImageTableViewCell.m
//  ImageMemoryDemo
//
//  Created by CaoDong on 2023/7/5.
//

#import "ImageTableViewCell.h"
#import "UIImageView+WebCache.h"

@interface ImageTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ImageTableViewCell

- (void)setImageUrl:(NSURL *)imageUrl {
    _imageUrl = imageUrl;
    [self.imageView sd_setImageWithURL:_imageUrl placeholderImage:[UIImage imageNamed:@"image_placeholder"] options:SDWebImageScaleDownLargeImages];
}

@end
