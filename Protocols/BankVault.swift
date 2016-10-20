//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


protocol ProvideAccess {
    
    func allowEntryWithPassword(password: [Int]) -> Bool
    
}


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}


extension BankVault: ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool {
        if password.isEmpty {
            return false
        } else if password.count > 10 {
            return false
        } else {
        
            for (index, num) in password.enumerated() {
                if index % 2 == 0 {
                    if num % 2 != 0 {
                        return false
                    }
                }
            }
        
        }
        return true
    }
}
