//
//  Queue.swift
//  
//
//  Created by Mouna Cheikhna on 23/01/2017.
//
//

import Foundation

public struct Queue<T> {
    fileprivate var arr = [T]()
    
    public var isEmpty: Bool {
        return arr.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        
    }
}
