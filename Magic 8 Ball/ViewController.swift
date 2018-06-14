//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jason Li on 2018-06-04.
//  Copyright © 2018 Jason Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallIndex = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ImageButtonPressed(_ sender: Any) {
        updateBallImage()
    }
    @IBAction func answerButtonPressed(_ sender: Any) {
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallIndex = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
}

