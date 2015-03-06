//
//  ViewController.m
//  SwimCycleCounter
//
//  Created by Igor Kimieciki on 06/03/15.
//  Copyright (c) 2015 Igor Kimieciki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *chronometer;

@property (weak, nonatomic) NSMutableArray *cycles;
@property (weak, nonatomic) NSDate *startTime;
@property (weak, nonatomic) NSTimer *mainTimer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startTime:(id)sender {
    NSLog(@"Start");
    
    self.startTime = [NSDate date];
    
    NSLog(@"%@", self.startTime);
    
    self.mainTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/100 target:self selector:@selector(refreshTimer:) userInfo:nil repeats:YES];
    
}


- (void)refreshTimer:(NSTimer*)timer {
    
    
    NSLog(@"Refresh Timer");
    
    
    
    
    //NSMutableString *text = [[NSMutableString alloc] init];
    NSDateFormatter *formatter;
    NSString        *dateString;
    
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"mm:ss.SSS"];
    dateString = [formatter stringFromDate:[NSDate date]];
    
    NSLog(@"%@",dateString);
    // decrement timer 1 … this is your UI, tick down and redraw
    //[myStopwatch tickDown];
    //[myStopwatch.view setNeedsDisplay];
    
    // increment timer 2 … bump time and redraw in UI
    //…
}

- (void)actionStop:(id)sender {
    
    // stop the timer
}

- (IBAction)stopTimer:(id)sender {
    NSLog(@"Stop");
    [self.mainTimer invalidate];
}
- (IBAction)addCycle:(id)sender {
    NSLog(@"Add Cycle");
}

@end
