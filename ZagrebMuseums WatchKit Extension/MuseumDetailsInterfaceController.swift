//
//  MuseumDetailsInterfaceController.swift
//  ZagrebMuseums WatchKit Extension
//
//  Created by Ivica Tokic on 13/11/2017.
//  Copyright © 2017 Ivica Tokic. All rights reserved.
//

import WatchKit
import Foundation


class MuseumDetailsInterfaceController: WKInterfaceController {

    @IBOutlet var nameLabel: WKInterfaceLabel!
    @IBOutlet var addressLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        guard let context = context as? NSDictionary, let dataSource = context["dataSource"] as? [Museum]
            else {
                return
        }
        
        if let index = context["museumIndex"] as? Int {
            let name = dataSource[index].name
            let address = dataSource[index].address
            nameLabel.setText(name)
            addressLabel.setText(address)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
