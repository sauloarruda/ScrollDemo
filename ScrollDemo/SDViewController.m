//
//  SDViewController.m
//  ScrollDemo
//
//  Created by Saulo Arruda on 9/11/12.
//  Copyright (c) 2012 Jera. All rights reserved.
//

#import "SDViewController.h"

@interface SDViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *zoomImageView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation SDViewController
@synthesize zoomImageView;
@synthesize scrollView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize = CGSizeMake(320*3, 120);
}

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [self setZoomImageView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.zoomImageView;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
