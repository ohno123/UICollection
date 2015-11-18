//
//  ViewController.m
//  UICollection使用
//
//  Created by 艾葭 on 15/10/13.
//  Copyright © 2015年 艾葭. All rights reserved.
//

#import "ViewController.h"
#import "collectionCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpCollection];
}

-(void)setUpCollection{
    self.nameArray = [[NSArray alloc]initWithObjects:@"我是传奇",@"盗梦空间",@"我是骨头",@"野兽家园",@"怒火攻心2：高压电",@"机器人9号", nil];
    self.dataMArr = [NSMutableArray array];
    for(NSInteger index = 0;index<[self.nameArray count]; index++){
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"版本更新"]];
        NSString *title = [NSString stringWithFormat:@"%@",[self.nameArray objectAtIndex:index]];
        NSDictionary *dic = @{@"image": image, @"title":title};
        [self.dataMArr addObject:dic];
    }
    self.myConllection.delegate = self;
    self.myConllection.dataSource = self;
    
    
}
#pragma mark - Collection View Data Source
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataMArr.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *collectionCellID = @"collectionCell";
    collectionCell *cell = (collectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionCellID forIndexPath:indexPath];
    
    NSDictionary *dic    = self.dataMArr[indexPath.row];
    UIImage *image       = dic[@"image"];
    NSString *title      = dic[@"title"];
    
    cell.imageView.image = image;
    cell.titleLabel.text = title;
    
    return cell;
};

@end

