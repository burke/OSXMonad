//
//  OSXMonadAppDelegate.m
//  OSXMonad
//
//  Created by Burke Libbey on 11-06-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "OSXMonadAppDelegate.h"

@implementation OSXMonadAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    CFArrayRef windowList = CGWindowListCopyWindowInfo(kCGWindowListOptionOnScreenOnly, kCGNullWindowID);
    for (NSMutableDictionary* entry in (NSArray*)windowList) 
    {
        //NSString* ownerName = [entry objectForKey:(id)kCGWindowOwnerName];
        //NSInteger ownerPID = [[entry objectForKey:(id)kCGWindowOwnerPID] integerValue];
        NSLog(@"%@", entry);
    }
    CFRelease(windowList);  
    

}

@end