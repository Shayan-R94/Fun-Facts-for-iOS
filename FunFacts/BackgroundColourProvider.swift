//
//  BackgroundColourProvider.swift
//  FunFacts
//
//  Created by Shayan Rastegar on 03/03/2017.
//  Copyright © 2017 Shayan Rastegar. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundColourProvider {
    let colours = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), //teal colour
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), //yellow colour
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), //red colour
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), //orange colour
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), //dark colour
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), //purple colour
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0), //green colour
    ]
    
    func randomColour() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colours.count)
        return colours[randomNumber]
    }
}
