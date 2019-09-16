//
//  UITestingTutorialUITests.swift
//  UITestingTutorialUITests
//
//  Created by Digital-02 on 9/16/19.
//  Copyright © 2019 Code Pro. All rights reserved.
//

import XCTest

class UITestingTutorialUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
   
    func testValidUserLogin(){
        
        let validUserName = "CodePro"
        let validPassword = "abc123"
        
        let app = XCUIApplication()
        
        app.navigationBars["Mockify Music"].buttons["Profile"].tap()
        
        let userNameTextField = app.textFields["Username"]
        userNameTextField.tap()
        userNameTextField.typeText(validUserName)
        XCTAssert(userNameTextField.exists)
        
        let passwordTextField = app.secureTextFields["Password"]
        passwordTextField.tap()
        passwordTextField.typeText(validPassword)
        XCTAssert(passwordTextField.exists)
        
        
        app.buttons["Login"].tap()
        
        let downloadCell = app.tables.staticTexts["My Downloads"]
        
        expectation(for: NSPredicate(format: "exists == 1"), evaluatedWith: downloadCell, handler: nil)
        

        waitForExpectations(timeout: 5, handler: nil)
       
        
    }
    
//    func testAppp(){
//
//
//
//
//
//    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
