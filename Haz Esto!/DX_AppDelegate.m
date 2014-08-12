//
//  DX_AppDelegate.m
//  Haz Esto!
//
//  Created by Danny Chaves on 09/08/14.
//  Copyright (c) 2014 DXNNX LLC. All rights reserved.
//

#import "DX_AppDelegate.h"
#include <time.h>
@implementation DX_AppDelegate
int min=0;
int hour=0;
bool sig = true;
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}
- (void)tiempo{
    time_t ahora = time(0);
    struct tm *HoraActual = localtime(&ahora);
    if (sig && HoraActual->tm_hour==hour && HoraActual->tm_min==min){
        sig = false;
        system("osascript -e 'tell application \"System Events\" to shut down'");
        
    }

}

- (void)startthread{

    if (sig){
        [self tiempo];
        [NSTimer scheduledTimerWithTimeInterval:30 target:self selector:@selector(tiempo) userInfo:nil repeats:YES];
    }
}
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app {
    return YES;
}

- (IBAction)ready:(id)sender {
    sig = true;
    NSString *mins = [NSString stringWithFormat:@"%d",min];
    NSString *hours = [NSString stringWithFormat:@"%d",hour];
    int diez = 10;
    if (min<diez) {
        mins = [NSString stringWithFormat:@"0%d",min];
    }
    if (hour<diez) {
        hours = [NSString stringWithFormat:@"0%d",hour];
    }
    l11 = [NSString stringWithFormat:@"%@:%@", hours,mins];
    [output setStringValue:l11];
    [self startthread];
}
- (IBAction)cancel:(id)sender {
    sig = false;
    l11 = [NSString stringWithFormat:@"HH:MM"];
    [output setStringValue:l11];
}
- (IBAction)sethoras:(id)sender {
    NSPopUpButton *bt = (NSPopUpButton*)sender;
    int index = [bt title].intValue;
    hour = index;
    
}

- (IBAction)setminutos:(id)sender {
    NSPopUpButton *btn = (NSPopUpButton*)sender;
    
    int index = [btn title].intValue;
    min = index;
}
- (IBAction)aboutapp:(id)sender{
    [self->panelInNib makeKeyAndOrderFront:nil];
}



@end
