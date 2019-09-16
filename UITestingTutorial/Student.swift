//
//  Student.swift
//  UITestingTutorial
//
//  Created by Digital-02 on 9/16/19.
//  Copyright © 2019 Code Pro. All rights reserved.
//

import Foundation

class Student{
    private let fName: String
    private let lName: String
    
    var friends: [Student] = []
    
    init(fName: String, lName: String){
        self.fName = fName
        self.lName = lName
    }
    
    func addFriend(friend: Student){
        friends.append(friend)
    }
    
    func validFName() -> Bool {
        return fName.count > 3
    }
    
    func validLName() -> Bool {
        return lName.count > 3
    }
}
