//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger lowNumber, highNumber;
    
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    }
    else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    NSMutableString *numberBetweenNumbers = [NSMutableString string];
    
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [numberBetweenNumbers appendFormat:@"%ld", (long)i];
    }
    
    return numberBetweenNumbers;
}
@end

