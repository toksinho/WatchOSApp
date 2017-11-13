//
//  InterfaceController.swift
//  ZagrebMuseums WatchKit Extension
//
//  Created by Ivica Tokic on 13/11/2017.
//  Copyright © 2017 Ivica Tokic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var museums: [Museum] = []
    @IBOutlet var museumsTable: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        fillArrayWithMuseums()
        updateTableRowsWithMuseums()
        print(museums.count)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func fillArrayWithMuseums() {
        let museumsPlist = Bundle.main.path(forResource: "ZagrebMuseums", ofType: "plist")
        let arrayOfMuseums = NSArray(contentsOfFile: museumsPlist!) as! Array<Array<String>>
        var id = 0
        for data in arrayOfMuseums {
            let museum = Museum(id: id, name: data[0], address: data[1])
            id += 1
            museums.append(museum)
        }
    }
    
    func updateTableRowsWithMuseums() {
        museumsTable.setNumberOfRows(museums.count, withRowType: "MuseumRow")
        
        for row in museums {
            if let oneRow = museumsTable.rowController(at: row.id) as? MuseumsTableRowController {
                oneRow.museumLabel.setText(row.name)
            }
        }
    
    }
    
}























