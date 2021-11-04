//
//  API.swift
//  AsyncTask
//
//  Created by ramil on 04.11.2021.
//

import Foundation

struct API {
    
    static func fetchNumbers(count: Int, in range: ClosedRange<Int>) async throws -> [Int] {
            
        try await withCheckedThrowingContinuation({ continuation in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                
                var numbers: [Int] = []
                
                for _ in 0 ..< count {
                    let number = Int.random(in: range)
                    numbers.append(number)
                }
                
                continuation.resume(returning: numbers)
            }
        })
    }
}
