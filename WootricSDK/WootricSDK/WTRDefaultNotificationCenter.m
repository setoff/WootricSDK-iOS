//
//  WTRDefaultNotificationCenter.m
//  WootricSDK
//
// Copyright (c) 2018 Wootric (https://wootric.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "WTRDefaultNotificationCenter.h"

@interface WTRDefaultNotificationCenter ()
@property (nonatomic, strong) NSNotificationCenter *notificationCenter;
@end

@implementation WTRDefaultNotificationCenter

- (instancetype)initWithNotificationCenter:(NSNotificationCenter *)notificationCenter {
  if (self = [super init]) {
    _notificationCenter = notificationCenter;
  }
  return self;
}

- (void)addObserver:(id)observer selector:(SEL)aSelector name:(nullable NSNotificationName)aName object:(nullable id)anObject {
  [_notificationCenter addObserver:observer selector:aSelector name:aName object:anObject];
}

- (void)postNotificationName:(NSNotificationName)aName object:(nullable id)anObject {
  [_notificationCenter postNotificationName:aName object:anObject];
}

- (void)postNotificationName:(NSNotificationName)aName object:(nullable id)anObject userInfo:(nullable NSDictionary *)aUserInfo {
  [_notificationCenter postNotificationName:aName object:anObject userInfo:aUserInfo];
}

@end
