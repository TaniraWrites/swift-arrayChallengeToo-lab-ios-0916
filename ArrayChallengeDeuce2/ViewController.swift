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
            return "Welcome Billy! You can sit wherever you like."
        }   else if name == "Meg Ryan"{
            deliLine.insert("Meg Ryan", atIndex:0)
            return "Welcome Meg! You can sit wherever you like."
            
        }    else if deliLine.count == 0 {
                deliLine.append(name)
                return "Welcome \(name), you're first in line!"
        }   else {
                deliLine.append("\(name)")
                return "Welcome \(name), you're number \(deliLine.count) in line."
           
            
        }
        return ""
    }
    
    
    func nowServing()->String {
        
        if deliLine.count == 0 {
           return "There is no one to be served."
       }else{
            
            let firstPerson = "Now serving \(deliLine[0])!"
            deliLine.removeFirst()
            
            return firstPerson
            
            
    
        }
            return ""
        
    }
    func deliLineDescription()->String{
        var newLine = "The line is:"
        if deliLine.count == 0{
            return "The line is currently empty."
        }else{
            for (index, names) in deliLine.enumerate(){
                newLine.appendContentsOf("\n\(index + 1). \(names)")
            }
            
        }
        return newLine
    }
}