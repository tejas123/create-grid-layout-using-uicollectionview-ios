#import "CollectionViewController.h"
#import "CustomCell.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

@synthesize marrImages,mdictImageData;

static NSString * const reuseIdentifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    marrImages=[[NSMutableArray alloc]init];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"1.png",@"imageFile",@"One",@"Info",nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"2.png",@"imageFile",@"Two",@"Info", nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"3.png",@"imageFile",@"Three",@"Info", nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"4.png",@"imageFile",@"Four",@"Info",nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"5.png",@"imageFile",@"Five",@"Info", nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"6.png",@"imageFile",@"Six",@"Info", nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"7.png",@"imageFile",@"Seven",@"Info",nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"8.png",@"imageFile",@"Eight",@"Info",nil];
    [marrImages addObject:mdictImageData];
    
    mdictImageData=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"9.png",@"imageFile",@"Nine",@"Info",nil];
    [marrImages addObject:mdictImageData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [marrImages count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.lblIndex.text=[[marrImages objectAtIndex:[indexPath row]]valueForKey:@"Info"];
    
    UIImage *image=[UIImage imageNamed:[[marrImages objectAtIndex:[indexPath row]]valueForKey:@"imageFile"]];
    
    [cell.ivCartoon setImage:image];
    
    return cell;
}

@end
