//
//  SDK.swift
//  CustomFramework
//
//  Created by Deeprajj on 05/06/24.
//

import Foundation

public struct SDK {
    
    private static var isAPIKeyValid = false
    
    private static let apiKeys = [
        "privateKey123"
    ]
    
    private static func checkAPIKey() -> Bool {
        if !isAPIKeyValid {
            print("Please provide a valid API Key")
        }
        return isAPIKeyValid
    }
    
    public static func configure(apiKeu: String) {
        isAPIKeyValid = apiKeu.contains(apiKeu)
    }
    
    public static func doSomeWork() {
        guard checkAPIKey() else { return }
        print("Doing som work ...")
    }
}
