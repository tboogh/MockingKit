//
//  Mockable+Inspect.swift
//  MockingKit
//
//  Created by Daniel Saidi on 2019-11-25.
//  Copyright © 2019-2025 Daniel Saidi. All rights reserved.
//

import Foundation

public extension Mockable {

    /// Get all calls to a certain mock reference.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func calls<Arguments, Result>(
        to ref: MockReference<Arguments, Result>
    ) -> [MockCall<Arguments, Result>] {
        registeredCalls(for: ref)
    }

    /// Get all calls to a certain mock reference.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func calls<Arguments, Result>(
        to refKeyPath: KeyPath<Self, MockReference<Arguments, Result>>
    ) -> [MockCall<Arguments, Result>] {
        calls(to: self[keyPath: refKeyPath])
    }

    /// Get all calls to a certain async mock reference.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func calls<Arguments, Result>(
        to ref: AsyncMockReference<Arguments, Result>
    ) -> [MockCall<Arguments, Result>] {
        registeredCalls(for: ref)
    }

    /// Get all calls to a certain async mock reference.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func calls<Arguments, Result>(
        to refKeyPath: KeyPath<Self, AsyncMockReference<Arguments, Result>>
    ) -> [MockCall<Arguments, Result>] {
        calls(to: self[keyPath: refKeyPath])
    }

    /// Check if a mock reference has been called.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ ref: MockReference<Arguments, Result>
    ) -> Bool {
        calls(to: ref).count > 0
    }

    /// Check if a mock reference has been called.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, MockReference<Arguments, Result>>
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath])
    }

    /// Check if an async mock reference has been called.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ ref: AsyncMockReference<Arguments, Result>
    ) -> Bool {
        calls(to: ref).count > 0
    }

    /// Check if an async mock reference has been called.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, AsyncMockReference<Arguments, Result>>
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath])
    }

    /// Check if a mock reference has been called.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    ///   - numberOfTimes: The expected number of calls.
    func hasCalled<Arguments, Result>(
        _ ref: MockReference<Arguments, Result>,
        numberOfTimes: Int
    ) -> Bool {
        calls(to: ref).count == numberOfTimes
    }

    /// Check if a mock reference has been called.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    ///   - numberOfTimes: The expected number of calls.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, MockReference<Arguments, Result>>,
        numberOfTimes: Int
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath], numberOfTimes: numberOfTimes)
    }

    /// Check if an async mock reference has been called.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ ref: AsyncMockReference<Arguments, Result>,
        numberOfTimes: Int
    ) -> Bool {
        calls(to: ref).count == numberOfTimes
    }

    /// Check if an async mock reference has been called.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, AsyncMockReference<Arguments, Result>>,
        numberOfTimes: Int
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath], numberOfTimes: numberOfTimes)
    }

    /// Get all calls to a certain throwing mock reference.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func calls<Arguments, Result>(
        to ref: ThrowingMockReference<Arguments, Result>
    ) -> [MockCall<Arguments, Result>] {
        registeredCalls(for: ref)
    }

    /// Get all calls to a certain throwing mock reference.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func calls<Arguments, Result>(
        to refKeyPath: KeyPath<Self, ThrowingMockReference<Arguments, Result>>
    ) -> [MockCall<Arguments, Result>] {
        calls(to: self[keyPath: refKeyPath])
    }

    /// Get all calls to a certain async throwing mock reference.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func calls<Arguments, Result>(
        to ref: AsyncThrowingMockReference<Arguments, Result>
    ) -> [MockCall<Arguments, Result>] {
        registeredCalls(for: ref)
    }

    /// Get all calls to a certain async throwing mock reference.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func calls<Arguments, Result>(
        to refKeyPath: KeyPath<Self, AsyncThrowingMockReference<Arguments, Result>>
    ) -> [MockCall<Arguments, Result>] {
        calls(to: self[keyPath: refKeyPath])
    }

    /// Check if a throwing mock reference has been called.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ ref: ThrowingMockReference<Arguments, Result>
    ) -> Bool {
        calls(to: ref).count > 0
    }

    /// Check if a throwing mock reference has been called.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, ThrowingMockReference<Arguments, Result>>
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath])
    }

    /// Check if an async throwing mock reference has been called.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ ref: AsyncThrowingMockReference<Arguments, Result>
    ) -> Bool {
        calls(to: ref).count > 0
    }

    /// Check if an async throwing mock reference has been called.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, AsyncThrowingMockReference<Arguments, Result>>
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath])
    }

    /// Check if a throwing mock reference has been called a certain number of times.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    ///   - numberOfTimes: The expected number of calls.
    func hasCalled<Arguments, Result>(
        _ ref: ThrowingMockReference<Arguments, Result>,
        numberOfTimes: Int
    ) -> Bool {
        calls(to: ref).count == numberOfTimes
    }

    /// Check if a throwing mock reference has been called a certain number of times.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    ///   - numberOfTimes: The expected number of calls.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, ThrowingMockReference<Arguments, Result>>,
        numberOfTimes: Int
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath], numberOfTimes: numberOfTimes)
    }

    /// Check if an async throwing mock reference has been called a certain number of times.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to check calls for.
    ///   - numberOfTimes: The expected number of calls.
    func hasCalled<Arguments, Result>(
        _ ref: AsyncThrowingMockReference<Arguments, Result>,
        numberOfTimes: Int
    ) -> Bool {
        calls(to: ref).count == numberOfTimes
    }

    /// Check if an async throwing mock reference has been called a certain number of times.
    ///
    /// For this to return `true` the number of calls must match `numberOfCalls`.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to check calls for.
    ///   - numberOfTimes: The expected number of calls.
    func hasCalled<Arguments, Result>(
        _ refKeyPath: KeyPath<Self, AsyncThrowingMockReference<Arguments, Result>>,
        numberOfTimes: Int
    ) -> Bool {
        hasCalled(self[keyPath: refKeyPath], numberOfTimes: numberOfTimes)
    }

    /// Get the registered error for a throwing mock reference.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to get the error for.
    /// - Returns: The registered error, or `nil` if no error has been registered.
    func error<Arguments, Result>(
        for ref: ThrowingMockReference<Arguments, Result>
    ) -> Error? {
        registeredError(for: ref)
    }

    /// Get the registered error for a throwing mock reference.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to get the error for.
    /// - Returns: The registered error, or `nil` if no error has been registered.
    func error<Arguments, Result>(
        for refKeyPath: KeyPath<Self, ThrowingMockReference<Arguments, Result>>
    ) -> Error? {
        error(for: self[keyPath: refKeyPath])
    }

    /// Get the registered error for an async throwing mock reference.
    ///
    /// - Parameters:
    ///   - ref: The mock reference to get the error for.
    /// - Returns: The registered error, or `nil` if no error has been registered.
    func error<Arguments, Result>(
        for ref: AsyncThrowingMockReference<Arguments, Result>
    ) -> Error? {
        registeredError(for: ref)
    }

    /// Get the registered error for an async throwing mock reference.
    ///
    /// - Parameters:
    ///   - refKeyPath: A key path to the mock reference to get the error for.
    /// - Returns: The registered error, or `nil` if no error has been registered.
    func error<Arguments, Result>(
        for refKeyPath: KeyPath<Self, AsyncThrowingMockReference<Arguments, Result>>
    ) -> Error? {
        error(for: self[keyPath: refKeyPath])
    }
}
