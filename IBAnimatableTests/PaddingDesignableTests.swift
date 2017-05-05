//
//  PaddingDesignableTests.swift
//  IBAnimatable
//
//  Created by Steven Deutsch on 5/5/17.
//  Copyright © 2017 IBAnimatable. All rights reserved.
//

import XCTest
@testable import IBAnimatable

final class PaddingDesignableTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testPaddingLeft() {
    let textField = AnimatableTextField()
    textField.paddingLeft = 10.0
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10.0, height: 0))
    XCTAssertEqual(textField.leftView?.frame, paddingView.frame)
    XCTAssertEqual(textField.leftViewMode, .always)
  }
  
  func testPaddingRight() {
    let textField = AnimatableTextField()
    textField.paddingRight = 15.0
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15.0, height: 0))
    XCTAssertEqual(textField.rightView?.frame, paddingView.frame)
    XCTAssertEqual(textField.rightViewMode, .always)
  }
  
  // Ask if height is supposed to be set here
  func testPaddingSide() {
    let textField = AnimatableTextField()
    textField.paddingSide = 20.0
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 20.0, height: 20.0))
    XCTAssertEqual(textField.rightView?.frame, paddingView.frame)
    XCTAssertEqual(textField.rightViewMode, .always)
    XCTAssertEqual(textField.leftView?.frame, paddingView.frame)
    XCTAssertEqual(textField.leftViewMode, .always)
  }
  
}

