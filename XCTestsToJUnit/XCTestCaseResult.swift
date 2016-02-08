//
//  XCTestCaseResult.swift
//  XcodebuildUtilities
//
//  Created by Douglas Sjoquist on 2/1/16.
//  Copyright © 2016 Ivy Gulch. All rights reserved.
//

import Foundation

class XCTestCaseResult {
    let testSuite:XCTestSuiteResult
    var suiteName:String {
        return self.testSuite.suiteName
    }
    let methodName:String

    var log:[String] {
        return _log
    }

    var errors:[String] {
        return _errors
    }

    private var _log:[String] = []
    private var _errors:[String] = []
    
    init(testSuite:XCTestSuiteResult, methodName:String) {
        self.testSuite = testSuite
        self.methodName = methodName
    }

    func processLog(line:String) {
        _log.append(line)
    }
}