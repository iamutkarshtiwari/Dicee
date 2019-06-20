//
//  ViewController.swift
//  Dicee
//
//  Created by iamutkarshtiwari on 2019/06/13.
//  Copyright © 2019 iamutkarshtiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndexLeft: Int = 0
    var randomDiceIndexRight: Int = 0

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        
        diceImageViewLeft.image = getRandomDiceImage()
        diceImageViewRight.image = getRandomDiceImage()
    }
    
    private func getRandomDiceImage() -> UIImage {
        let number = Int.random(in: 0 ... 5) + 1
        return UIImage(named: "dice\(number)")!
    }

}

