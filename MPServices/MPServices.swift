//
//  MPServices.swift
//  MPServices
//
//  Created by Daniela Manole on 11.09.2023.
//

public class MPServices {
    public class func computeScore(numberOfSeconds: Int, numberOfTries: Int, numberOfMatches: Int, numberOfCards: Int) -> Int {
        var score = 0
        
        let timeScore = ((45 - numberOfSeconds) / 45) * 20 // 20%
        let triesScore = 30 / (numberOfTries - numberOfCards + 1) // 30%
        let matchScore = (numberOfMatches / numberOfCards) * 50 // 50%
        
        score = timeScore + triesScore + matchScore
        
        return score
    }
}
