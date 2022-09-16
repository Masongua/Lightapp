//
//  ViewController.swift
//  Lightapp
//
//  Created by 5e on 9/16/22.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true

    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractedFunc()
        // Do any additional setup after loading the view.
    }

    fileprivate func extractedFunc() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for:.normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        extractedFunc()
        
    }
    
}

