//
//  ViewController.m
//  HotUpdataDemo
//
//  Created by lanouhn on 2016/10/28.
//  Copyright © 2016年 SMX. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArr = [NSMutableArray array];
    
    [self.dataArr addObject:@"哈哈哈"];
    [self.dataArr addObject:@"嘻嘻☺️"];
    [self.dataArr addObject:@"呵呵呵🙃"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    cell.textLabel.text = [self.dataArr objectAtIndex:indexPath.row];
    return cell;
}
@end
