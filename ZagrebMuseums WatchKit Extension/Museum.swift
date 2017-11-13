//
//  Museum.swift
//  ZagrebMuseums WatchKit Extension
//
//  Created by Ivica Tokic on 13/11/2017.
//  Copyright © 2017 Ivica Tokic. All rights reserved.
//

import Foundation

class Museum {
    
    var name: String
    var address: String
    var id: Int
    
    init(id: Int, name: String, address: String) {
        self.name = name
        self.address = address
        self.id = id
    }
}
