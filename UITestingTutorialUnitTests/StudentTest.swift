//
//  StudentTest.swift
//  UITestingTutorialUnitTests
//
//  Created by Digital-02 on 9/16/19.
//  Copyright © 2019 Code Pro. All rights reserved.
//

import Foundation
import XCTest

@testable import UITestingTutorial

class StudentTests: XCTestCase {
    
    func testValidFirstName(){
        let student = Student(fName: "Sh", lName: "Test")
        
        XCTAssertFalse(student.validFName())
    }
    
    func testValidLastName(){
        let student = Student(fName: "Sh", lName: "Test")
        
        XCTAssertTrue(student.validLName())
    }
    
    func testAddFriend(){
        let aj = Student(fName: "Aj", lName: "Test")
        let tom = Student(fName: "Tom", lName: "Test2")
        
        XCTAssertTrue(aj.friends.count == 0)
        
        aj.addFriend(friend: tom)
        
        XCTAssertTrue(aj.friends.count > 0)
    }
    
//    private let fName: String
//    private let lName: String
//
//    var friends: [Student] = []
//
//    init(fName: String, lName: String){
//        self.fName = fName
//        self.lName = lName
//    }
//
//    func addFriend(friend: Student){
//        friends.append(friend)
//    }
//
//    func validFName() -> Bool {
//        return fName.count > 3
//    }
//
//    func validLName() -> Bool {
//        return lName.count > 3
//    }
}
