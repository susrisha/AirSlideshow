//
//  ViewController.m
//  AirSlideShow
//
//  Created by Deemag Infotech on 03/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
//#import "MWPhotoBrowser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    pictureUrls = [[NSArray alloc]initWithObjects:
     @"http://distilleryimage2.s3.amazonaws.com/f0d5a022c4e211e1a23c22000a1c9e05_7.jpg",
      @"http://distilleryimage10.s3.amazonaws.com/f2190872c4d111e1aee522000a1e8a5f_7.jpg",
      @"http://distilleryimage5.s3.amazonaws.com/399ea1a8c4db11e1bef722000a1e8bb5_7.jpg",
        @"http://distilleryimage9.s3.amazonaws.com/346c9b84c4e211e19ab222000a1e8819_7.jpg",
     @"http://distilleryimage5.s3.amazonaws.com/f519397cc4d911e18e3c22000a1e8b97_7.jpg",
      @"http://distilleryimage10.s3.amazonaws.com/1bf3fe84c4e311e1aaec22000a1e88af_7.jpg",
       @"http://distilleryimage10.s3.amazonaws.com/3410bd96c4d811e19c6622000a1e89ba_7.jpg",
      @"http://distilleryimage0.s3.amazonaws.com/0b24593ac4e011e1ba8122000a1d0135_7.jpg",
      @"http://distilleryimage10.s3.amazonaws.com/bb18c294c4d211e181bd12313817987b_7.jpg",
      @"http://distilleryimage5.s3.amazonaws.com/19e32cf8c4e011e18e3c22000a1e8b97_7.jpg",
      @"http://distilleryimage1.s3.amazonaws.com/d232515ac4d911e1ba8122000a1d0135_7.jpg",
      @"http://distilleryimage11.s3.amazonaws.com/f4e4af18c4d411e1a39b1231381b7ba1_7.jpg",
      @"http://distilleryimage9.s3.amazonaws.com/d1b357aac4d511e1abd612313810100a_7.jpg",
     @"http://distilleryimage10.s3.amazonaws.com/85e6f20ac4da11e19e4a12313813ffc0_7.jpg",
      @"http://distilleryimage10.s3.amazonaws.com/eff2732ec4d311e19c6622000a1e89ba_7.jpg",
      @"http://distilleryimage4.s3.amazonaws.com/bf92f17cc4e211e1aaec22000a1e88af_7.jpg",
     @"http://distilleryimage3.s3.amazonaws.com/7461776ac4d711e19c6622000a1e89ba_7.jpg",
      @"http://distilleryimage1.s3.amazonaws.com/2c89e29cc4d211e1b10e123138105d6b_7.jpg",
     @"http://distilleryimage3.s3.amazonaws.com/b43c0722c4d411e19ab222000a1e8819_7.jpg",
      @"http://distilleryimage7.s3.amazonaws.com/e12036f6c4d311e1aaec22000a1e88af_7.jpg",
                   @"http://distilleryimage9.s3.amazonaws.com/ee739654c4d811e1a39b1231381b7ba1_7.jpg",nil];
   }

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser
{
    return [pictureUrls count];
}
- (id<MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index
{
    return [MWPhoto photoWithURL:[NSURL URLWithString:[pictureUrls objectAtIndex:index]]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showGallery:(id)sender {
    // Show the pictures in full picture mode
    MWPhotoBrowser *browser = [[MWPhotoBrowser alloc] initWithDelegate:self];
    browser.displayActionButton = NO;
    browser.wantsFullScreenLayout = YES;
    //[browser setInitialPageIndex:2];
    
    // Show
    
    // Modal
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:browser];
    nc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:nc animated:YES];
    [nc release];
    

    
}
@end
