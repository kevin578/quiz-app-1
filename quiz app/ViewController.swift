//
//  ViewController.swift
//  quiz app
//
//  Created by Kevin Briggs on 10/5/17.
//  Copyright © 2017 Kevin Briggs. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
    
    var questions = ["When did the War of 1812 start?",
                     "The White House is what color?",
                     "The alphabet starts with this letter:"]
    
    var answers = [["2034", "1812", "1912"], ["White", "Six", "Magenta"], ["The alphabet", "a dog", "A"]]
    
//variables for every piece of text that is going to change - labels and buttons
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
   
//all my functions that are triggered when the button is pressed
    
    @IBAction func button1(_ sender: Any) {
        
    }
    
    @IBAction func button2(_ sender: Any) {
        
    }
    
    @IBAction func button3(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       question.text = questions[0]
        button1.setTitle(answers[0][0], for: .normal)
        button2.setTitle(answers[0][1], for: .normal)
        button3.setTitle(answers[0][2], for: .normal)

    }




}

