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
    
    var correctAnswer = [1, 0, 2]
    var questionNumber = 0

//variables for every piece of text that is going to change - labels and buttons
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var nextQuestion: UIButton!
    
//all my functions that are triggered when the button is pressed
    
    @IBAction func nextQuestion(_ sender: Any) {
        if (questionNumber < questions.count - 1){
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }

        displayQuestion(questionNumber: questionNumber)
        button1.isHidden = false
        button2.isHidden = false
        button3.isHidden = false
        nextQuestion.isHidden = true
        displayQuestion(questionNumber: questionNumber)
    }
    
    
    @IBAction func button1(_ sender: Any) {
        checkAnswer(button: 0)

        
    }
    

    @IBAction func button2(_ sender: Any) {
        checkAnswer(button: 1)

    }
    
    @IBAction func button3(_ sender: Any) {
        checkAnswer(button: 2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion.isHidden = true
        displayQuestion(questionNumber: 0)

    }
    
    func checkAnswer(button: Int) {
        button1.isHidden = true
        button2.isHidden = true
        button3.isHidden = true
        nextQuestion.isHidden = false
    if (button == correctAnswer[questionNumber]) {
        question.text = "Correct"
    }
    else {
        question.text = "Wrong"
    }
        if (questionNumber < questions.count - 1){
            nextQuestion.setTitle("Next Question", for: .normal)
        }
        else {
            nextQuestion.setTitle("Restart", for: .normal)
        }
        
    }
    
    func displayQuestion(questionNumber: Int) {
        question.text = questions[questionNumber]
        button1.setTitle(answers[questionNumber][0], for: .normal)
        button2.setTitle(answers[questionNumber][1], for: .normal)
        button3.setTitle(answers[questionNumber][2], for: .normal)
    }




}

