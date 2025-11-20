//
//  AsyncThrowingMockReference.swift
//  MockingKit
//
//  Created by Tobias Boogh on 2025-11-16.
//  Copyright © 2025 Daniel Saidi. All rights reserved.
//

import Foundation

/// This type can be used to create async throwing mock function references.
public struct AsyncThrowingMockReference<Arguments, Result>: Identifiable {

    public init(_ function: @escaping (Arguments) async throws -> Result) {
        self.id = UUID()
        self.function = function
    }

    public let id: UUID
    public let function: (Arguments) async throws -> Result
}
