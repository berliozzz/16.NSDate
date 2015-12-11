//
//  Object.m
//  TimeTest
//
//  Created by Nikolay Berlioz on 04.10.15.
//  Copyright © 2015 Nikolay Berlioz. All rights reserved.
//

#import "Object.h"

@implementation Object

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Object is initializated!");
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTest:) userInfo:nil repeats:YES];
//        [timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:5]];
    }
    return self;
}

- (void) timerTest:(NSTimer*) timer
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss:SSS"];
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    
//    [timer invalidate];
}

- (void) dealloc
{
    NSLog(@"Object is deallocated!");
}

@end
