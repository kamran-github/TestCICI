//
//  CI_CD_DemoTests.swift
//  CI_CD_DemoTests
//
//  Created by Kamran TNK on 12/08/20.
//  Copyright © 2020 Test. All rights reserved.
//

import XCTest
@testable import CI_CD_Demo

class CI_CD_DemoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCheckValidEmail() {
        let vc = ViewController()
        XCTAssertTrue(vc.validateEmail(emaiString: "kamran@gmail.com"))
    }

    func testCheckInvalidEmail() {
        let vc = ViewController()
        XCTAssertFalse(vc.validateEmail(emaiString: "kamrangmail.com"))
    }
    
    func testValidPassword(){
        let vc = ViewController()
        XCTAssertTrue(vc.validPassword(passwordString: "789456123"))
    }
    
    func testInvalidPassword() {
        let vc = ViewController()
        XCTAssertFalse(vc.validPassword(passwordString: "7894"))
    }
}
