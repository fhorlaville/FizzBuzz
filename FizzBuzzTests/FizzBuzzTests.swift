//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Franck Horlaville on 18/07/2015.
//  Copyright (c) 2015 TAM Software. All rights reserved.
//

import Cocoa
import XCTest

class FizzBuzzTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testExample() {
//        // This is an example of a functional test case.
//        XCTAssert(true, "Pass")
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock() {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    func testFizz() {
        XCTAssertEqual(fizzResult(1), "1", "Pass")
        XCTAssertEqual(fizzResult(2), "2", "Pass")
        XCTAssertEqual(fizzResult(3), "Fizz", "Pass")
        XCTAssertEqual(fizzResult(5), "Buzz", "Pass")
        XCTAssertEqual(fizzResult(15), "FizzBuzz", "Pass")
    }
    
    func fizzResult(input:Int8) -> String {
        var result: Array<CChar> = Array(count: 9, repeatedValue: 0)
        fizzBuzz(input, &result)
        return String.fromCString(result)!
    }
    
}
