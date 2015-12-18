//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSArray *alphabeticallySortedCharacters = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return alphabeticallySortedCharacters;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    for (NSString *worfInName in characterArray) {
        NSString *lowercaseName = worfInName.lowercaseString;
        NSRange worfRange = [lowercaseName rangeOfString:@"worf"];
        if (worfRange.location != NSNotFound) {
            return YES;
        }
        
    }
    return NO;
}
@end
