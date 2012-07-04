//
//  ViewController.h
//  AirSlideShow
//
//  Created by Deemag Infotech on 03/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWPhotoBrowser.h"
@interface ViewController : UIViewController<MWPhotoBrowserDelegate>
{
    NSArray *pictureUrls;
}
- (IBAction)showGallery:(id)sender;

@end
