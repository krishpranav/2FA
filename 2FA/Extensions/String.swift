//
//  String.swift
//  2FA
//
//  Created by krisna pranav on 09/07/23.
//

import Foundation

extension String {
    func trimmed() -> String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func separate(every stride: Int = 4, with separator: Character = " ") -> String {
        return String(enumerated().map { $0 > 0 && $0 % stride == 0 ? [separator, $1] : [$1]}.joined())
    }
}
