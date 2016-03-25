//
//  ViewController.m
//  WiFi-SSID
//
//  Created by MoGo on 16/3/24.
//  Copyright © 2016年 李策--MoGo--. All rights reserved.
//

#import "ViewController.h"
#import "LCGetWiFiSSID.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

#pragma mark**必须真机才有结果,这个方法还不知道是否允许上线**
    NSString *SSID = [LCGetWiFiSSID getSSID];
    NSLog(@"SSID:%@",SSID);
    NSString *BSSID = [LCGetWiFiSSID getBSSID];
    NSLog(@"BSSID:%@",BSSID);
    
    
    
    
    
    NSString *locationIP = [LCGetWiFiSSID localIPAddress];
    NSLog(@"locationIP:%@",locationIP);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
