//
//  MockThrowingReference.swift
//  MockingKit
//
//  Created by Tobias Boogh on 2025-11-16.
//  Copyright © 2020-2025 Daniel Saidi. All rights reserved.
//

import Foundation

/// This type can be used to create throwing mock function references.
public struct ThrowingMockReference<Arguments, Result>: Identifiable {

    public init(_ function: @escaping (Arguments) throws -> Result) {
        self.id = UUID()
        self.function = function
    }

    public let id: UUID
    public let function: (Arguments) throws -> Result
}
