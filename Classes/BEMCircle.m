//
//  BEMCircle.m
//  SimpleLineGraph
//
//  Created by Bobo on 12/27/13. Updated by Sam Spencer on 1/11/14.
//  Copyright (c) 2013 Boris Emorine. All rights reserved.
//  Copyright (c) 2014 Sam Spencer.
//

#import "BEMCircle.h"

@implementation BEMCircle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    if (self.Pointcolor.CGColor == [UIColor whiteColor].CGColor ) {
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        CGContextAddEllipseInRect(ctx, rect);
        
        [[UIColor colorWithWhite:1 alpha:0.5] set];
        CGContextFillPath(ctx);
        CGContextAddEllipseInRect(ctx, CGRectMake(4, 4, 12, 12));
        
        [self.Pointcolor set];
        CGContextFillPath(ctx);
    }else{
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        CGContextAddEllipseInRect(ctx, rect);
        
        [[UIColor colorWithRed:72.0/255.0 green:198.0/255.0 blue:223.0/255.0 alpha:0.16] set];
        CGContextFillPath(ctx);
        CGContextAddEllipseInRect(ctx, CGRectMake(13, 13, 6, 6));
        
        [self.Pointcolor set];
        CGContextFillPath(ctx);
    }
    
}

@end
