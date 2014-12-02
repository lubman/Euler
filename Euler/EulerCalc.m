//
//  EulerCalc.m
//  Euler
//
//  Created by Lubman, Steven on 11/21/14.
//  Copyright (c) 2014 InfoPro. All rights reserved.
//

#import "EulerCalc.h"

@implementation EulerCalc


+ (void)ProjectEulerAssignment1
{
    int summ;
    summ = 0;
    
    for (int i = 1; i < 1000; i++)
    {
        if ((i % 3)==0 || (i % 5)==0)
            summ = summ + i;
    }
    
    NSLog(@"%d", summ);
}



+(void)ProjectEulerAssignment2
{
    int currentFibbonacciTerm;
    int firstFibbonacciTerm = 1;
    int secondFibbonacciTerm = 2;
    int sumOfEven = 2;
    
    firstFibbonacciTerm = 1;
    secondFibbonacciTerm = 2;
    
    while (currentFibbonacciTerm < 4000000)
    {
        
        currentFibbonacciTerm = firstFibbonacciTerm + secondFibbonacciTerm;
        
        if ((currentFibbonacciTerm % 2) == 0)
            sumOfEven = sumOfEven + currentFibbonacciTerm;
        
        firstFibbonacciTerm = secondFibbonacciTerm;
        secondFibbonacciTerm = currentFibbonacciTerm;
        
    }
    
    NSLog(@"%d", sumOfEven);
}

long check_prime(long a)
{
    long c, result = 0;
    
    for ( c = 2 ; c <= a - 1 ; c++ )
    {
        if ( a%c == 0 )
            result= 0;
    }
    if ( c == a )
        result = 1;
    
    return result;
}

+ (void)ProjectEulerAssignment3;
{
    
    NSInteger i, n = 600851475143;
    
    NSMutableArray *factors = [[NSMutableArray alloc] init];
    
    NSLog(@"Factors of 600851475143 are: ");
    for( i=2 ; i<n ; ++i)
    {
        if(n%i==0){
            //if (check_prime(i) == 1)
            {NSLog(@"%ld",(long)i);}
            [factors addObject: [NSNumber numberWithInteger:i]];
            
        }
        
    }
    
}        //NSArray *fct =

+ (void)ProjectEulerAssignment4
{
    
    NSInteger i = 999, j = 999;
    BOOL flag = false;
    NSMutableArray *palindrome = [[NSMutableArray alloc] init];
    //NSNumber *product;
    
    for (i = 999; i>=0; i--)
    {
        for (j = 999; j>=0; j--)
        {
            NSNumber *product = [[NSNumber alloc] initWithInteger:j*i];
            NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
            
            [numberFormatter setNumberStyle:NSNumberFormatterNoStyle];
            
            NSString *productStr = [numberFormatter stringFromNumber:product];
            if (productStr.length == 6)
            {
                if (([productStr characterAtIndex:(0)] == [productStr characterAtIndex:(5)]) &&
                    ([productStr characterAtIndex:(1)] == [productStr characterAtIndex:(4)]) &&
                    ([productStr characterAtIndex:(2)] == [productStr characterAtIndex:(3)]))
                {flag = true;
                    //NSLog(@"Palindrome found: %@", productStr);
                    [palindrome addObject:(product)];
                }
                
            }
            if (productStr.length == 5)
            {
                if (([productStr characterAtIndex:(0)] == [productStr characterAtIndex:(4)]) &&
                    ([productStr characterAtIndex:(1)] == [productStr characterAtIndex:(3)]))
                {   flag = true;
                    //NSLog(@"Palindrome found: %@", productStr);
                    [palindrome addObject:(product)];
                }
                
                
            }
            
            /*                for (NSInteger k = 0; k <= productStr.length; k++)
             {
             if ([productStr characterAtIndex:(k)] != [productStr characterAtIndex:(productStr.length - k - 1)])
             
             
             } */
            
            
            
            
            
        }
    }
    
    
    NSNumber * max = [palindrome valueForKeyPath:@"@max.intValue"];
    NSLog(@"Largest Palindrome is %@", max);
    
}

+ (void)ProjectEulerAssignment5

{
  //  NSMutableArray *arr = [[NSMutableArray alloc] init];
    NSNumber *minproduct = [[NSNumber alloc] initWithInteger:1*2*3*5*7*11*13*17*19];
    NSNumber *maxproduct = [[NSNumber alloc] initWithInteger:1*2*2*2*2*3*3*5*7*11*13*17*19];
    
    /*for (NSNumber k=minproduct; k=< maxproduct; k++){
     
     
     }*/
    
    
    NSLog(@"Product is %@", minproduct);
    NSLog(@"Max Product is %@", maxproduct);
}


@end
