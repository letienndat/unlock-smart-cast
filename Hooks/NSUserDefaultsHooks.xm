#import "Headers/SmartCastClasses.h"

NSString *premiumKey = @"isPremium";

%hook NSUserDefaults

-(void)setBool:(BOOL)arg1 forKey:(id)arg2 {
    if ([arg2 isEqualToString:premiumKey]) {
        %orig(YES, arg2);
        return;
    }
    %orig(arg1, arg2);
}

-(BOOL)boolForKey:(id)arg1 {
    if ([arg1 isEqualToString:premiumKey]) {
        return YES;
    }
    return %orig(arg1);
}

%end