//
//  EulerAppDelegate.h
//  Euler
//
//  Created by Lubman, Steven on 9/12/14.
//  Copyright (c) 2014 InfoPro. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <math.h>

@interface EulerAppDelegate : NSObject <NSApplicationDelegate>

- (IBAction)Click:(id)sender;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButtonCell *ClickB;


@end
