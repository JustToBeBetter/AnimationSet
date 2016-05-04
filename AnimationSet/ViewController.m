//
//  ViewController.m
//  AnimationSet
//
//  Created by 李金柱 on 16/4/29.
//  Copyright © 2016年 likeme. All rights reserved.
//

#import "ViewController.h"
#import "LJZZanViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView      *_tableView;
    NSMutableArray   *_dataArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initTable];
}
- (void)initTable{
    _dataArray = [[NSMutableArray alloc]init];
    [_dataArray addObject:@"点赞"];
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    _tableView.delegate   = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
}

#pragma
#pragma  mark =================table data source=================

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = _dataArray[indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([_dataArray[indexPath.row] isEqualToString:@"点赞"]) {
        LJZZanViewController *zanVC  = [[LJZZanViewController alloc]init];
        [self.navigationController pushViewController:zanVC animated:YES];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
