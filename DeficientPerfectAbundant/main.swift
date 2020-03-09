//
//  main.swift
//  DeficientPerfectAbundant
//
//  Created by Vallamkonda, Sunaina on 2020-03-09.
//  Copyright © 2020 Vallamkonda, Sunaina. All rights reserved.
//

import Foundation

while true {
    
    var n = 0
    
    
    
    while true {
        
        print("Type an integer between 1 and 32 500")
        
        guard let input = readLine() else {
            
            //No input was provided
            continue
        }
        
        guard let integer = Int(input) else {
            
            //input is not an integer
            continue
        }
        
        guard integer > 0, integer < 32_501 else {
            continue
        }
        n = integer
        
        break
    }
    
    var total = 0
    
    for number in 0...n - 1 {
        //find the proper divisors of n
        if n % number == 0 {
            total += number
        }
        
    }
    
    print(total)
    
    if total < n {
        print("\(n) is a deficient number")
    } else if total == n {
        print("\(n) is a perfect number")
    } else {
        print("\(n) is a abundant number")
    }
}
