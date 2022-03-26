//
//  CatController.swift
//  makeBrrr
//
//  Created by Anton on 26.03.2022.
//

import Cocoa

class CatController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func catDead(_ sender: Any) {
        self.view.window?.close()
    }
    
}
