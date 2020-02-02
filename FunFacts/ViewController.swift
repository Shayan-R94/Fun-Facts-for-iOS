//
//  ViewController.swift
//  FunFacts
//
//  Created by Shayan Rastegar on 28/02/2017.
//  Copyright © 2017 Shayan Rastegar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factProvider = FactProvider()
    let colourProvider = BackgroundColourProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColour = colourProvider.randomColour()
        view.backgroundColor = randomColour
        funFactButton.tintColor = randomColour
    }

}

