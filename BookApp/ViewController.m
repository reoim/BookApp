//
//  ViewController.m
//  BookApp
//
//  Created by DONGMIN LEE on 13/08/2014.
//  Copyright (c) 2014 Dongmin Lee. All rights reserved.
//

#import "ViewController.h"
#import "BookInfoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _books = [[NSMutableArray alloc] init];
    PhenomenalBook *book = [[PhenomenalBook alloc] init];
    
    book.name = @"A Study in Scarlet";
    book.author = @"Sir Author Conan Doyle";
    book.published = @"1887";
    book.genre = @"Detective";
    book.cover = [UIImage imageNamed:@"sherlockCover.jpg"];
    [_books addObject:book];
    
    book = [[PhenomenalBook alloc] init];
    book.name = @"The game";
    book.author = @"Style";
    book.published = @"2004";
    book.genre = @"Love";
    book.cover = [UIImage imageNamed:@"game.png"];
    [_books addObject:book];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    PhenomenalBook *book = [_books objectAtIndex:indexPath.row];
    UILabel *ourLabel = (UILabel *) [cell viewWithTag:42];
    ourLabel.text = book.name;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_books count];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    BookInfoViewController *bookInfoViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"BookInfoViewController"];

                                                
    [self presentViewController:bookInfoViewController animated:YES completion:nil];
    


}


@end
