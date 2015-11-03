import Cocoa

/*:

Your prior goal was to:

* generate a string, 20 characters long, with letters randomly selected
    * based on probability of each letter occuring in all (or at least most) English writing

However, this is not quite how a Markov Chain works.

A Markov chain makes selections based on an analysis of *only* the input text provided.

So, let's move to the next step.

Consider the text below. Re-execute the playground a few times.

*/

let input = getRandomSequence()

input

/*:

What do you notice about the input text each time you run the playground?

Your next step is to take what you have learned from prior playgrounds, and, write an algorithm in plain English that you think would accomplish this goal:

* determine the probability with which a given letter occurs in the input text
* build an output string that is 30 characters long
    * letters occur in the output string based on the proabability with which they occurred in the input string

*/


// Create empty list of Probabilitys (Dictionary)
var letterCounts = [Character:Int]()

// Loop over imput string
for letter in input.characters {
    //Inspect each characters
    letter
    //Build the dictonary list of letter counts
    if letterCounts[letter] == nil{
        letterCounts[letter] = 1
    }else{
        //We know this letter is in the dictonary.We know it
        //...just add one to current count
        letterCounts[letter]! = letterCounts[letter]! + 1
    }
    
}

letterCounts
//Get the length of the imput string
input.characters.count

//Create an empty dictionaryto store the probabilitys
var letterProbablilites = [Character: Float]()

//Loop over the list of letter counts
for(letter, count) in letterCounts {
    
    //Add an entry to the probabbilities in the dictionary
    letterProbablilites[letter] = Float(count) / Float(input.characters.count) * 100
    
}


letterProbablilites

//check do the probabilities add up to 100?
var total: Float = 0.0
for (letter, probability) in letterProbablilites {
    total = total + probability
    total
}























