//
//  AKStudent.h
//  _6_Types test
//
//  Created by Exo-terminal on 3/4/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    AKGenderMale = 5,
    AKGenderFemale
}AKGender;

typedef NSInteger AKTaburetka;

@interface AKStudent : NSObject
@property(strong, nonatomic) NSString* name;
@property(assign, nonatomic) AKGender gender;


@end
