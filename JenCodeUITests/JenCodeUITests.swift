//
//  JenCodeUITests.swift
//  JenCodeUITests
//
//  Created by Jenkins on 24/07/17.
//  Copyright © 2017 Jenkins. All rights reserved.
//

import XCTest

class JenCodeUITests: XCTestCase {
        
   
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        
        let buttonElementsQuery = XCUIApplication().otherElements.containing(.button, identifier:"Button")
        buttonElementsQuery.children(matching: .button).matching(identifier: "Button").element(boundBy: 0).tap()
        buttonElementsQuery.children(matching: .textField).element(boundBy: 1).tap()
        
        snapshot("01UserEntries")

       // let app = XCUIApplication()
   //     app.icons["JenCode"].tap()
        
    }

    
}
