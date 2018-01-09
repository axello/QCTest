//
//  ViewController.swift
//  QC-Test
//
//  Created by Axel Roest on 09/01/2018.
//  Copyright © 2018 wtf. All rights reserved.
//

import Cocoa
import Quartz

class ViewController: NSViewController {
    @IBOutlet weak var quartzView: QCView!
    
    override func awakeFromNib() {
        if let path = Bundle.main.path(forResource: "Telan Cube Replicator", ofType: "qtz") {
            self.quartzView.loadComposition(fromFile: path)
            self.quartzView.startRendering()
        }
        if let win = self.view.window {
            win.animationBehavior = .utilityWindow
        }
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear() {
        self.quartzView.stopRendering()
        self.quartzView.unloadComposition()
        super.viewWillDisappear()
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

