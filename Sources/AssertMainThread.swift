//
//  AssetMainThread.swift
//  MediaSearch
//
//  Created by tskim on 24/07/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import Foundation

func isTesting() -> Bool {
  return NSClassFromString("XCTestCase") != nil
}
func assertMainThread() {
  
  if !isTesting() && !Thread.current.isMainThread {
    fatalError("It is not the main thread. \(threadName())")
  }
}

func assertBackgroundThread() {
  if !isTesting() && Thread.current.isMainThread {
    fatalError("It is not the background thread. \(threadName())")
  }
}

func threadName() -> String {
  if Thread.isMainThread {
    return "main"
  } else {
    if let threadName = Thread.current.name, !threadName.isEmpty {
      return "\(threadName)"
    } else if let queueName = currentQueueName(), !queueName.isEmpty {
      return "\(queueName)"
    } else {
      return String(format: "%p", Thread.current)
    }
  }
}

private func currentQueueName() -> String? {
  let name = __dispatch_queue_get_label(nil)
  return String(cString: name, encoding: .utf8)
}
