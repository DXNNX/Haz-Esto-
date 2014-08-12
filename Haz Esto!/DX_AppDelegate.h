//
//  DX_AppDelegate.h
//  Haz Esto!
//
//  Created by Danny Chaves on 09/08/14.
//  Copyright (c) 2014 DXNNX LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DX_AppDelegate : NSObject <NSApplicationDelegate>{
    IBOutlet NSTextField *output;
    NSString *l11;
    IBOutlet NSPanel            *panelInNib;
    
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSView *about;
@property (strong) IBOutlet NSPopUpButton *horas;
@property (strong) IBOutlet NSPopUpButton *minutos;

@property (strong,nonatomic) IBOutlet NSTextField *labe1;
@property (strong,nonatomic) IBOutlet NSTextField *labe2;
@property (strong,nonatomic) IBOutlet NSTextField *labe3;
@property (strong,nonatomic) IBOutlet NSTextField *labe4;
@property (strong,nonatomic) IBOutlet NSTextField *labe5;
@property (strong,nonatomic) IBOutlet NSTextField *label;
@property (strong,nonatomic) IBOutlet NSTextField *label1;
@property (strong,nonatomic) IBOutlet NSTextField *label2;
@property(strong,nonatomic) IBOutlet NSTextField *label3;
- (IBAction)ready:(id)sender;
- (IBAction)cancel:(id)sender;
- (IBAction)sethoras:(id)sender;
- (IBAction)setminutos:(id)sender;
- (void)startthread;
- (void)tiempo;
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app;
- (IBAction)aboutapp:(id)sender;



@end
