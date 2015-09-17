//
//  TXSwizzlingTests.m
//  TXSwizzlingTests
//
//  Created by rtoshiro on 09/17/2015.
//  Copyright (c) 2015 rtoshiro. All rights reserved.
//

// https://github.com/kiwi-bdd/Kiwi

#import "NSObject+Swizzling.h"


SPEC_BEGIN(InitialTests)

describe(@"TXSwizzling Tests", ^{

  context(@"Class Methods", ^{

    it(@"exchanging existing methods", ^{
      NSString *foo = @"FOO";
      
      [NSString swizzleSelector:@selector(uppercaseString) to:@selector(lowercaseString)];
      
      [[[foo uppercaseString] should] equal:@"foo"];
    });

  });
  
});

SPEC_END

