//
//  KeyChain.swift
//  DOHIKEv2Demo
//
//  Created by Manas Pradhan on 19/09/2021.
//

import KeychainAccess

class KeyChain {
    
    private static let vpnUsernameKey = "vpn_username"
    private static let vpnPasswordKey = "vpn_password"
    
    static let bundle: Keychain = {
        return Keychain(service: "com.jurajhilje.DOHIKEv2", accessGroup: "WQXXM75BYN.com.jurajhilje.DOHIKEv2")
    }()
    
    class var vpnUsername: String? {
        get {
            return KeyChain.bundle[vpnUsernameKey]
        }
        set {
            KeyChain.bundle[vpnUsernameKey] = newValue
        }
    }
    
    class var vpnPassword: String? {
        get {
            return KeyChain.bundle[vpnPasswordKey]
        }
        set {
            KeyChain.bundle[vpnPasswordKey] = newValue
        }
    }
    
    class var vpnPasswordRef: Data? {
        return KeyChain.bundle[attributes: vpnPasswordKey]?.persistentRef
    }
    
}
