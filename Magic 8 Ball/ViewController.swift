//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Viren Waghela on 2019-01-03.
//  Copyright © 2019 Viren Waghela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber: Int = 0
    

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        
        print(randomBallNumber)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

