//
//  SKCommand.h
//  StreamKitDemo
//
//  Created by 李浩 on 2017/5/21.
//  Copyright © 2017年 李浩. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SKSignal;

@interface SKCommand : NSObject

@property (nonatomic,strong,readonly) SKSignal *enabledSignal;

@property (nonatomic,strong,readonly) SKSignal *executeSignal;

- (instancetype)initWithSignalBlock:(SKSignal *(^)(id value))signalBlock;

- (instancetype)initWithEnabled:(SKSignal *)enabled
                    signalBlock:(SKSignal *(^)(id value))signalBlock;

- (void)execute:(id)value;

@end