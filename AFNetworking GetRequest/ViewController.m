//
//  ViewController.m
//  AFNetworking GetRequest
//
//  Created by Nagam Pawan on 10/6/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import <AFURLSessionManager.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc]initWithSessionConfiguration:configuration];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://itunes.apple.com/search?term=apple&media=software"]];
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * response, id responseObject, NSError * error) {
        if (error) {
            NSLog(@"Error : %@", error);
        }
        else{
            NSLog(@"%@ %@", response, responseObject);
        }
        //NSDictionary *request = [AFJSONRequestSerializer serializer]re
        NSString *urlString = @"http://example.com";
        NSDictionary *parameters = @{@"foo" : @"bar", @"baz": @[@1, @2, @3]};
        [[AFJSONRequestSerializer serializer] requestWithMethod:@"GET" URLString:urlString parameters:parameters error:nil];
//        NSMutableArray *results = [manager valueForKey:@"results"];
//        NSLog(@"Results are : %@", results);
        
    }];
    [dataTask resume];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    return cell;
}

@end
