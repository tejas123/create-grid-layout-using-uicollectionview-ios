//
//  CollectionViewController.h
//  CollectionViewDemo
//
//  Created by abc on 03/02/15.
//  Copyright (c) 2015 TheappGuruz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UICollectionViewController<UICollectionViewDataSource>

@property (nonatomic,strong) NSMutableArray *marrImages;
@property (nonatomic,strong) NSMutableDictionary *mdictImageData;


@end
