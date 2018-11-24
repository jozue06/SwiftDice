//
//  ViewController.swift
//  dice
//
//  Created by Joshua McClung on 11/23/18.
//  Copyright © 2018 Joshua McClung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
       rollDice()
    }
    
    func rollDice(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceLeft.image = UIImage(named: diceArray[randomDiceIndex1])
        diceRight.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
}

