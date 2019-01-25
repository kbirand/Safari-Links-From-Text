//
//  ViewController.swift
//  Safari Links From Text
//
//  Created by Koray Birand on 25.01.2019.
//  Copyright © 2019 Koray Birand. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fileURL = URL(fileURLWithPath: "/Users/koraybirand/Desktop/history.txt")
        
        do {
            let text2 = try String(contentsOf: fileURL, encoding: .utf8)
            let newArray = text2.components(separatedBy: "\n")
            for items in newArray {
                NSWorkspace.shared.open(URL(string: items)!)
            }
        }
        catch {/* error handling here */}

        
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

