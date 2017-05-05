//
//  SliderImagesDesignableTests.swift
//  IBAnimatable
//
//  Created by Steven Deutsch on 5/5/17.
//  Copyright © 2017 IBAnimatable. All rights reserved.
//

import XCTest
@testable import IBAnimatable

class SliderImagesDesignableTests: XCTestCase {

  var slider: AnimatableSlider!
  var normalImage: UIImage!
  var highlightedImage: UIImage!

  override func setUp() {
    super.setUp()
    slider = AnimatableSlider()
    normalImage = UIImage()
    highlightedImage = UIImage()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testThumbImage() {
    slider.thumbImage = normalImage
    XCTAssertEqual(slider.thumbImage(for: .normal), normalImage)
  }

  func testThumbHighlightedImage() {
    slider.thumbImage = normalImage
    slider.thumbHighlightedImage = nil
    XCTAssertEqual(slider.thumbImage(for: .normal), normalImage)
    XCTAssertEqual(slider.thumbImage(for: .highlighted), normalImage)
    slider.thumbHighlightedImage = highlightedImage
    XCTAssertEqual(slider.thumbImage(for: .highlighted), highlightedImage)
  }

  func testMaximumTrackImage() {
    slider.maximumTrackImage = normalImage
    XCTAssertEqual(slider.maximumTrackImage(for: .normal), normalImage)
  }

  func testMaximumTrackHighlightedImage() {
    slider.maximumTrackImage = normalImage
    slider.maximumTrackHighlightedImage = nil
    XCTAssertEqual(slider.maximumTrackImage(for: .normal), normalImage)
    XCTAssertEqual(slider.maximumTrackImage(for: .highlighted), normalImage)
    slider.maximumTrackHighlightedImage = highlightedImage
    XCTAssertEqual(slider.maximumTrackImage(for: .highlighted), highlightedImage)
  }

  func testMinimumTrackImage() {
    slider.minimumTrackImage = normalImage
    XCTAssertEqual(slider.minimumTrackImage(for: .normal), normalImage)
  }

  func testMinimumTrackHighlightedImage() {
    slider.minimumTrackImage = normalImage
    slider.minimumTrackHighlightedImage = nil
    XCTAssertEqual(slider.minimumTrackImage(for: .normal), normalImage)
    XCTAssertEqual(slider.minimumTrackImage(for: .highlighted), normalImage)
    slider.minimumTrackHighlightedImage = highlightedImage
    XCTAssertEqual(slider.minimumTrackImage(for: .highlighted), highlightedImage)
  }

}
