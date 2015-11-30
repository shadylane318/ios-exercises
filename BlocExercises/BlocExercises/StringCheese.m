//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *shortName = cheeseName;
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        shortName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
    }
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    return shortName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        
        NSString *phrase = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
        NSLog(@"%@", phrase);
        return phrase;
    }
    else
    {
        NSString *phrase2 = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
        NSLog(@"%@", phrase2);
        return phrase2;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
}

@end
