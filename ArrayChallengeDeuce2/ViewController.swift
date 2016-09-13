//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Create your methods here
    
    
    
    func firstPerson(name:String){
        if deliLine.count == 0{
            deliLine.insert("\(name)", atIndex: 0)
            print("Welcome \(name), you're first in line!")
        } else{
        }
    }
    
    
    
    
    func addNameToDeliLine(name:String) ->String {
        if name == "Billy Crystal"{
            deliLine.insert("Billy Crystal", atIndex:0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        }   else if name == "Meg Ryan"{
            deliLine.insert("Meg Ryan", atIndex:0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        }    else if name != "Billy Crystal" || name != "Meg Ryan" {
            deliLine.append("\(name)")
            return "Welcome \(name), you're number \(deliLine.count) in line."
            
        }   else { firstPerson(name)
            
        }
        return ""
    }
    
    
    func nowServing()->String {
        
        if deliLine.count == 0 {
            print("There is no one to be served.")
        }else{
            
            for (index, _) in deliLine.enumerate(){
                print("Now serving: \(index + 1)")
                deliLine.removeAtIndex(0)
            }
        }
        return ""
        
    }
    func deliLineDescription()->String{
        var newLine = "The line is:\n"
        if deliLine.count == 0{
            print("The line is currently empty.")
        }else{
            for (index, names) in deliLine.enumerate(){
                newLine.appendContentsOf("\(index + 1). \(names)")
            }
            
        }
        return newLine
    }
}