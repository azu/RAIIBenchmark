//
//  RAIIBenchmarkTests.m
//  RAIIBenchmarkTests
//
//  Created by azu on 05/12/13.
//  Copyright (c) 2013 azu. All rights reserved.
//

#import "RAIIBenchmarkTests.h"
#import "RAIIBenchmark.h"


@implementation RAIIBenchmarkTests

- (void)setUp {
    [super setUp];

    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.

    [super tearDown];
}

- (void)testExample {

    beginBench(@"single test", {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.calendar = [NSCalendar currentCalendar];
        [dateFormatter stringFromDate:[NSDate date]];
    })

    beginBenchLoop(@"loop case", 1000, {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.calendar = [NSCalendar currentCalendar];
        [dateFormatter stringFromDate:[NSDate date]];
    })

    // not require __block
    NSMutableArray *array = [NSMutableArray array];
    beginBenchLoop(@"mutable case", 1000, {
        [array addObject:@"test"];
    })

}

@end
