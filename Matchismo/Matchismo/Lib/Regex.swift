//
//  Regex.swift
//  Matchismo
//
//  Created by Jake Craige on 1/5/15.
//  Copyright (c) 2015 Jake Craige. All rights reserved.
//

import Foundation

class Regex {
  let internalExpression: NSRegularExpression
  let pattern: String
  
  init(_ pattern: String) {
    self.pattern = pattern
    var error: NSError?
    self.internalExpression = NSRegularExpression(pattern: pattern, options: .CaseInsensitive, error: &error)!
  }
  
  func test(input: String) -> Bool {
    let matches = self.internalExpression.matchesInString(input, options: nil, range:NSMakeRange(0, countElements(input)))
    return matches.count > 0
  }
}