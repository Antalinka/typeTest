//
//  AppDelegate.m
//  _6_Types test
//
//  Created by Exo-terminal on 3/4/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "AppDelegate.h"
#import "AKStudent.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    BOOL boolVar = YES;
    NSInteger intVar = 10;
    NSUInteger uintVar = 100;
    CGFloat floatVar=1.2f;
    double doubleVar=1.5f;
    
    NSNumber* boolObject = [NSNumber numberWithBool:boolVar];
    NSNumber* intObject = [NSNumber numberWithBool:intVar];
    NSNumber* uintlObject = [NSNumber numberWithBool:uintVar];
    NSNumber* floatlObject = [NSNumber numberWithBool:floatVar];
    NSNumber* doubleObject = [NSNumber numberWithBool:doubleVar];

    
    
    NSArray* array = [NSArray arrayWithObjects:boolObject,intObject,uintlObject,floatlObject,doubleObject, nil];
     NSLog(@"boolVar=%d, intVar=%d, uintVar=%ld, floatVar=%1.1f, doubleVar=%1.1f",
           [[array objectAtIndex:0]boolValue],
           [[array objectAtIndex:1]intValue],
           [[array objectAtIndex:2]unsignedIntegerValue],
           [[array objectAtIndex:3]floatValue],
           [[array objectAtIndex:4]doubleValue]);
    
    
    CGPoint point1 = CGPointMake(0, 5);
    CGPoint point2 = CGPointMake(3, 4);
    CGPoint point3 = CGPointMake(2, 8);
    CGPoint point4 = CGPointMake(7, 1);
    CGPoint point5 = CGPointMake(4, 4);
    
    
    [NSValue valueWithCGPoint:point1];
    
    
    NSArray* array2 = [NSArray arrayWithObjects:
                      [NSValue valueWithCGPoint:point1],
                      [NSValue valueWithCGPoint:point2],
                      [NSValue valueWithCGPoint:point3],
                      [NSValue valueWithCGPoint:point4],
                      [NSValue valueWithCGPoint:point5],
                       nil];
    
    for (NSValue* value in array2){
        
        CGPoint p=[value CGPointValue];
        NSLog(@"point=%@", NSStringFromCGPoint(p));
    }
    
    /*
    NSLog(@"boolVar=%d, intVar=%d, uintVar=%d, floatVar=%1.1f, doubleVar=%1.1f", boolVar, intVar, uintVar, floatVar, doubleVar);
    NSLog(@"boolVar=%ld, intVar=%ld, uintVar=%ld, floatVar=%ld, doubleVar=%ld", sizeof(boolVar), sizeof(intVar), sizeof(uintVar), sizeof(floatVar), sizeof(doubleVar));
    NSInteger a= floatVar;
    NSLog(@"%d",a);
    
    AKStudent* studentA = [[AKStudent alloc]init];
    studentA.name = @"Best student";
    
    NSLog(@"StudentA name = %@", studentA.name);
    
    AKStudent* studentB = studentA;
    
    NSLog(@"StudentB name = %@", studentB.name);
    
    studentB.name = @"Bed student";
    
    NSLog(@"StudentA = %@", studentA.name);
    
    
    NSInteger c = 10;
    NSInteger d=c;
    d=5;
    
    NSLog(@"c=%d, d=%d",c,d);
    
    NSInteger *e=&c;
    *e=8;
    NSInteger test=0;
    
    NSInteger result=[self test:c testVar:&test];
    
    NSLog(@"%d=result, %d=test",result,test);

    */
    
  /*  AKStudent *student = [[AKStudent alloc]init];
    [student setGender:AKGenderFemale];
    
    AKTaburetka a= 10;
    
    UIViewAutoresizing
    NSLog(@"%d", [student gender]);
    
   */
    /*
    CGPoint point;
    point.x = 5.5f;
    point.y = 20;
    
    point = CGPointMake(6, 3);
    
    CGSize size;
    size.height = 10;
    size.width = 7;
    
    CGRect rect;
    rect.size=size;
    rect.origin=point;
    
    rect=CGRectMake(4, 6, 10, 15);//изменяем нашему прямоугольнику данные
    
    BOOL result = CGRectContainsPoint(rect, point);// находится ли точка point в прямоугольнике rect - булевое значение
    */
    
    
    
    return YES;
}

-(NSInteger) test:(NSInteger)test testVar:(NSInteger*) testPointer{
    *testPointer=5;
    
    return test;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
