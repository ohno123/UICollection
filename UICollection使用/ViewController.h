//
//  ViewController.h
//  UICollection使用
//
//  Created by 艾葭 on 15/10/13.
//  Copyright © 2015年 艾葭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>


@property (strong, nonatomic)NSMutableArray *dataMArr;
@property (nonatomic, strong)NSArray *nameArray;
@property (weak, nonatomic) IBOutlet UICollectionView *myConllection;


@end

