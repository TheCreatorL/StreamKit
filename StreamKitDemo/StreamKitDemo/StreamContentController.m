//
//  StreamContentController.m
//  StreamKit
//
//  Created by 苏南 on 16/12/24.
//  Copyright © 2016年 李浩. All rights reserved.
//

#import "StreamContentController.h"
#import "StreamKit/StreamKit.h"

@interface StreamContentController ()

@end

@implementation StreamContentController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sk_addObserverWithKeyPath(@"editing",^(NSDictionary* change){
    
    });
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self dismissViewControllerAnimated:YES completion:nil];
    });
    // Do any additional setup after loading the view.
}

//- (void)dealloc
//{
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
