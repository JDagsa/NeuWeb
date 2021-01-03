//
//  WindowController.swift
//  NeuWeb
//
//  Created by Jayden Dagsa on 1/3/21.
//

import Cocoa

class WindowController: NSWindowController {
    @IBOutlet weak var goBackOrForward: NSSegmentedControl!
    @IBOutlet weak var searchField: NSTextField!
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }

}
