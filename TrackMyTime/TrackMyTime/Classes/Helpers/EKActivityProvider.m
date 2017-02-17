//
//  EKActivityProvider.m
//  TrackMyTime
//
//  Created by Evgeny Karkan on 10.12.13.
//  Copyright (c) 2013 EvgenyKarkan. All rights reserved.
//

#import "EKActivityProvider.h"

static NSString * const kEKPlistName      = @"Activities";
static NSString * const kEKPlistExtension = @"plist";


@implementation EKActivityProvider;

+ (NSArray *)activities
{
    NSString *path = [[NSBundle mainBundle] pathForResource:kEKPlistName ofType:kEKPlistExtension];
    NSArray *roughDescriptions = [[NSArray alloc] initWithContentsOfFile:path];
    NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:[roughDescriptions count]];
    
    for (NSDictionary *dictionary in roughDescriptions) {
        EKActivity *activity = [[EKActivity alloc] initWithDictionary:dictionary];
        if (activity != nil) {
            [result addObject:activity];
        }
    }
    
    return result;
}

+ (EKActivity *)activityWithIndex:(NSUInteger)index
{
    NSParameterAssert(index >= 0);
    
    return [self activities][index];
}

+ (UIColor *)colorForActivity:(NSString *)activity
{
    NSParameterAssert(activity != nil);
    
    UIColor *color = nil;
    //hsw625728
    if ([activity isEqualToString:@"吃饭"]) {
        color = [UIColor colorWithHexString:@"#FFCFAB"];
    }
    if ([activity isEqualToString:@"个人护理"]) {
        color = [UIColor colorWithHexString:@"#52EDC7"];
    }
    if ([activity isEqualToString:@"交通"]) {
        color = [UIColor colorWithHexString:@"#79689A"];
    }
    if ([activity isEqualToString:@"工作"]) {
        color = [UIColor colorWithHexString:@"#DEAA88"];
    }
    if ([activity isEqualToString:@"学习提高"]) {
        color = [UIColor colorWithHexString:@"#34AADC"];
    }
    if ([activity isEqualToString:@"约会"]) {
        color = [UIColor colorWithHexString:@"#CDA4DE"];
    }
    if ([activity isEqualToString:@"自我发展"]) {
        color = [UIColor colorWithHexString:@"#9ACEEB"];
    }
    if ([activity isEqualToString:@"做家务"]) {
        color = [UIColor colorWithHexString:@"#F780A1"];
    }
    if ([activity isEqualToString:@"购物"]) {
        color = [UIColor colorWithHexString:@"#46EA78"];
    }
    if ([activity isEqualToString:@"运动健身"]) {
        color = [UIColor colorWithHexString:@"#FFFF99"];
    }
    if ([activity isEqualToString:@"下厨"]) {
        color = [UIColor colorWithHexString:@"#B3D557"];
    }
    if ([activity isEqualToString:@"散步"]) {
        color = [UIColor colorWithHexString:@"#3A77A1"];
    }
    if ([activity isEqualToString:@"追剧看电视"]) {
        color = [UIColor colorWithHexString:@"#1CAC78"];
    }
    if ([activity isEqualToString:@"听音乐"]) {
        color = [UIColor colorWithHexString:@"#CDC5C2"];
    }
    if ([activity isEqualToString:@"打游戏"]) {
        color = [UIColor colorWithHexString:@"#448B9D"];
    }
    if ([activity isEqualToString:@"玩手机"]) {
        color = [UIColor colorWithHexString:@"#C24655"];
    }
    if ([activity isEqualToString:@"陪家人"]) {
        color = [UIColor colorWithHexString:@"#FE9063"];
    }
    if ([activity isEqualToString:@"陪朋友"]) {
        color = [UIColor colorWithHexString:@"#4FA99F"];
    }
    if ([activity isEqualToString:@"开趴体"]) {
        color = [UIColor colorWithHexString:@"#CA4677"];
    }
    if ([activity isEqualToString:@"个人兴趣爱好"]) {
        color = [UIColor colorWithHexString:@"#C79975"];
    }
    if ([activity isEqualToString:@"拖延症"]) {
        color = [UIColor colorWithHexString:@"#95918C"];
    }
    if ([activity isEqualToString:@"睡觉"]) {
        color = [UIColor colorWithHexString:@"#F0D55D"];
    }
    
    return color;
}

@end
