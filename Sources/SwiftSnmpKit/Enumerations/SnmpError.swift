//
//  AsnError.swift
//  Snmp1
//
//  Created by Darrell Root on 6/29/22.
//

import Foundation
public enum SnmpError: Error {
    case badLength
    case unsupportedType
    case otherError
    case unexpectedSnmpPdu
    case invalidAddress
    case noResponse
    case snmpResponseError
    
    // report error types see https://oidref.com/1.3.6.1.6.3.15.1.1
    case snmpUnknownSecurityLevel
    case snmpNotInTimeWindow
    case snmpUnknownUser
    case snmpUnknownEngineId
    case snmpAuthenticationError // wrong digest
    case snmpDecryptionError
    
    /// This method prints out errors only if we are in debug mode
    internal static func debug(_ message: String,
            function: String = #function,
                file: String = #file,
                line: Int = #line) {
        if SnmpSender.debug == true {
            print("Error: \(file):\(function) line \(line): \(message)")
        }
    }
    /// This method prints out errors regardless of whether we are in debug mode
    internal static func log(_ message: String,
            function: String = #function,
                file: String = #file,
                line: Int = #line) {
            print("Error: \(file):\(function) line \(line): \(message)")
    }
}
