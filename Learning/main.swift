//
//  main.swift
//  Learning
//
//  Created by RajeshM on 16/01/18.
//  Copyright © 2018 RajeshM. All rights reserved.
//

import Foundation

enum MycalcError: ErrorType {
    
    case DividByZero
    
    case DividByOne
}

func divide(firstvalue first: Int, secondValue second: Int) throws -> Double {
    
    if second == 0 {
        
       throw MycalcError.DividByZero
    } else if second == 1 {
        
        throw MycalcError.DividByOne
    }
    
    
    return Double(first) / Double(second)
}

do {

var result = try divide(firstvalue: 5, secondValue: 1)

print("the result is-------->", result)


} catch MycalcError.DividByZero {
    
    print("You can't divide by zero")
}

catch MycalcError.DividByOne {
    
    print("You can't divide by one also")
}


