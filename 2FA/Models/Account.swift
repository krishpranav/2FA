//
//  Account.swift
//  2FA
//
//  Created by krisna pranav on 09/07/23.
//

import Foundation
import CoreData
import SwiftOTP


extension Account {
    var algorithm: OTPAlgorithm {
        set {
            algorithmRaw = newValue.rawValue
        }
        get {
            guard let rawAlgo = algorithmRaw else {
                return .sha1
            }
            
            return OTPAlgorithm(rawValue: rawAlgo) ?? .sha1
        }
    }
}

extension Account: Encodable {
    
}
