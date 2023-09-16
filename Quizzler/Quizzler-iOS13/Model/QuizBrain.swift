//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Scott Melton on 5/13/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
                Question(q: "A slug's blood is green.", a: "True"),
                Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                Question(q: "Google was originally called 'Backrub'.", a: "True"),
                Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    var userScore = 0
    
    mutating func checkAnswer (_ userAnswer: String) -> Bool {
        if (userAnswer == quiz[questionNumber].answer) {
            userScore = userScore + 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestion () -> String {
        let question = quiz[questionNumber].question
        return question
    }
    
    func getProgress () -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    // When changing one of the structs properties we must make sure the function
    // is mutable so here we make a mutating function to change questionNumber.
    mutating func getNextQuestion () {
        // Check to see if we are on the last question or not.
        if (questionNumber + 1 != quiz.count) {
            questionNumber = questionNumber + 1
        } else {
            questionNumber = 0
            userScore = 0
        }
    }
    
    func getUserScore () -> Int {
        return userScore
    }
    
}
