//
//  main.m
//  SwapNumbers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"4Always0 5look8 4on9 7the2 4bright8 9side7 3of8 5life5";
        
        NSArray *sepArray = [line componentsSeparatedByString:@" "];
        
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        
        for (NSString *wordString in sepArray) {
            
//            NSString *firstNumberString = [NSString stringWithFormat:@"%C",[wordString characterAtIndex:0]];
//            NSString *lastNumberString = [NSString stringWithFormat:@"%C",[wordString characterAtIndex:wordString.length - 1]];
            
            NSMutableString *mutString = [wordString mutableCopy];
            
            NSRange firstNumRange = NSMakeRange( 0, 1);
            NSRange lastNumRange = NSMakeRange( mutString.length - 1, 1);
            
//            [mutString replaceCharactersInRange:firstNumRange withString:lastNumberString];
//            [mutString replaceCharactersInRange:lastNumRange withString:firstNumberString];

            [mutString replaceCharactersInRange:firstNumRange withString:[NSString stringWithFormat:@"%C",[wordString characterAtIndex:wordString.length - 1]]];
            [mutString replaceCharactersInRange:lastNumRange withString: [NSString stringWithFormat:@"%C",[wordString characterAtIndex:0]]];
            
            [solutionString appendFormat:@"%@ ", mutString];
        }
        
        // remove trailing space from line
        NSRange lastSpaceRange = NSMakeRange(solutionString.length - 1, 1);
        [solutionString deleteCharactersInRange:lastSpaceRange];
        
        NSLog(@"solutionString:%@", solutionString);
    }
    return 0;
}
