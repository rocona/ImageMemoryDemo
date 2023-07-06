//
//  ViewController.m
//  ImageMemoryDemo
//
//  Created by CaoDong on 2023/7/5.
//

#import "ViewController.h"
#import "ImageTableViewCell.h"
#import "SDImageCache.h"
#import "SDWebImageDownloader.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *imageUrlArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ImageTableViewCell" bundle:nil] forCellReuseIdentifier:@"ImageTableViewCellIdentifier"];
}





#pragma mark - 列表
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.imageUrlArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ImageTableViewCellIdentifier" forIndexPath:indexPath];
    NSString *urlString = [self.imageUrlArray objectAtIndex:indexPath.row];
    cell.imageUrl = [NSURL URLWithString:urlString];
    return cell;
}


- (NSArray *)imageUrlArray {
    if (!_imageUrlArray) {
        NSString *allUrlString = @"https://i2.mjj.rip/2023/07/06/e63e15c18ddcff975518fa5833ca9de2.jpeg, https://i2.mjj.rip/2023/07/06/e4b5354efabd39d16a2935de975c7aa9.jpeg, https://i2.mjj.rip/2023/07/06/19ee534db148279a967e1dd7f00c6b16.jpeg, https://i2.mjj.rip/2023/07/06/c7a40eed9d1aa17aecb3ad9de2b9d4e7.jpeg, https://i2.mjj.rip/2023/07/06/5029ca45e271ac65050d7ebc2f9b570a.jpeg, https://i2.mjj.rip/2023/07/06/8d786c6798369b070148c1929a77fdd3.jpeg, https://i2.mjj.rip/2023/07/06/1178d8b17cd3491a73fcb160f05b1959.jpeg, https://i2.mjj.rip/2023/07/06/b217dc1177296d3e01106eb342c1dd4e.jpeg, https://i2.mjj.rip/2023/07/06/073e11582a3c4f2a64a798b6d9aa06e9.jpeg, https://i2.mjj.rip/2023/07/06/1703e4448b6ff781f6b73977249c06b4.jpeg, https://i2.mjj.rip/2023/07/06/c5d3590f1a2f83941cf1f430aaabce3f.jpeg, https://i2.mjj.rip/2023/07/06/fc846f6527c6358c1932009f253b577b.jpeg, https://i2.mjj.rip/2023/07/06/b5e4ee72cefa9714e196127e79ba25ab.jpeg, https://i2.mjj.rip/2023/07/06/2e32345edff42237eebf198a59f9cae8.jpeg, https://i2.mjj.rip/2023/07/06/4d3ce7d588f12d6617e215c119b24f52.jpeg, https://i2.mjj.rip/2023/07/06/e9e6519296eef64ca502c2980a87d277.jpeg, https://i2.mjj.rip/2023/07/06/3bc34e1baa3198bfb74b38480534fd6e.jpeg, https://i2.mjj.rip/2023/07/06/89f53c0c9d63733f041b56ac463d7380.jpeg, https://i2.mjj.rip/2023/07/06/39bac3282772f11674e8c5ac1c91c470.jpeg, https://i2.mjj.rip/2023/07/06/2f587436bc1d0a0e0acdd5fdfa3a77ee.jpeg, https://i2.mjj.rip/2023/07/06/fe52201650252be6b8825f53fd5b1bc2.jpeg, https://i2.mjj.rip/2023/07/06/29925c1b59b8e35e3b8fec82c85d14e3.jpeg, https://i2.mjj.rip/2023/07/06/068882119dc8f3a24b9a3be8ccb1903c.jpeg, https://i2.mjj.rip/2023/07/06/f79b4375504dfe222260f611a43da9a9.jpeg, https://i2.mjj.rip/2023/07/06/47fbea40bcd8ba3cbabbd4e9f1e9a38e.jpeg, https://i2.mjj.rip/2023/07/06/709ac2894a045baf4553495aa59423bd.jpeg";
        _imageUrlArray = [allUrlString componentsSeparatedByString:@", "];
    }
    return _imageUrlArray;
}

@end
