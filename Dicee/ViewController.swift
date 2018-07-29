//
//  ViewController.swift
//  Dicee
//
//  Created by quipper on 7/28/18.
//  Copyright © 2018 muslih. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        diceImageView1.image = UIImage(named: getRandomDiceImage())
        diceImageView2.image = UIImage(named: getRandomDiceImage())
    }
    
    func getRandomDiceIndex() -> Int {
        return Int(arc4random_uniform(6))
    }
    
    func getRandomDiceImage() -> String {
        return diceArray[getRandomDiceIndex()]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

