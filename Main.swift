//
//  main.swift
//  ResturantMenu
//
//  Created by Reem on 29/05/1443 AH.
//

import Foundation
struct Invoice{
    let plateName:menuFood
    let Price :Int
    func printInvoice(){
        print ("You ordered:",self.plateName, "The price is",self.Price,"💲")
    }
}
enum menuFood {
case Lasagna
case Penne_Tukta
case Spaghetti_Tonno
case Prosciutto_e_funghi
case Quattro_Stagioni
}
//all the orders with their prices
let invoice1:Invoice = Invoice(plateName: .Lasagna, Price: 90)
let invoice2:Invoice = Invoice(plateName: .Penne_Tukta, Price: 77)
let invoice3:Invoice = Invoice(plateName: .Spaghetti_Tonno, Price: 50)
let invoice4:Invoice = Invoice(plateName: .Prosciutto_e_funghi, Price: 90)
let invoice5:Invoice = Invoice(plateName: .Quattro_Stagioni, Price: 50)


let ordersPrices : [Invoice] = [invoice1,invoice2,invoice3,invoice4,invoice5]


var userOrderInput :[Invoice] = []

let menu = """
--- Pasta🍝---

 1- Lasagna
 2- Penne Tukta
 3- Spaghetti Tonno

--- Pizza🍕---

 4- Prosciutto e funghi
 5-Quattro Stagioni
 
"""
var name = readLine()
var userInput=""
print ("\n\n Welcome \(name.unsafelyUnwrapped) to ✨Arno✨ resturant's menu app \n Kindly, type the number that corresponds to the option you want ;afterwards, click (Enter) from the keyboard to continue:1 \n ")
repeat{
 print ("-----------------------------")
    print ("1. \t View the menu options📋")
    print ("2. \t Make an order  📝")
    print ("3. \t Check Invoice 🧾")
    print("0. \t To Exit & Close The Program")
    print("Note: If You Want to Run The program Again, Just Use The Shortcut (command+R) From The Keyboard \n")
    print("-----------------------------")

if let userSelection = readLine(){
    userInput = userSelection
    
    switch userInput {
        
    case"1":
        print(menu)
    case"2":
        readUserOrder()
        
    case"3":
       calculatePrice(array:userOrderInput)
        
    case"4":
        print("Thanks for Visiting us")
    default:
        print("default")
        
        
        
        
    }
    
    
    
    
    
    
    
}
}
/// This while for repeat
while userInput != "4"
        
        
        
        
        // case 2 reading the menu
        func readUserOrder (){
    
    var userOrder = "No"
    repeat{
    print("Kindly, choose the plate's number:")
    // choosing from the menu
    var userOrder = readLine()!
    switch userOrder{
    
    case "1":
   
        userOrderInput.append(ordersPrices[0])
        print(userOrderInput)
        
    case"2":
        userOrderInput.append(ordersPrices[1])
        print(userOrderInput)
        
    case"3":
        userOrderInput.append(ordersPrices[2])
        print(userOrderInput)
       
 
    case"4":
        userOrderInput.append(ordersPrices[3])
        print(userOrderInput)
    case"5":
        userOrderInput.append(ordersPrices[4])
        print(userOrderInput)
    default:
        print("kindly,chose a number in order to choose from the menu")
        
        
    }
        print("Would you like to order another plate👩🏻‍🍳? ( Yes or No)")
        userOrder = readLine()!
    }
    while userOrder != "No"
}
/// function for case no.3
func calculatePrice (array:[Invoice]){
    var totalPrice = 0
   for i in array { //inserting the total
          
       totalPrice = totalPrice + i.Price
      }
    print("Total price is \(totalPrice)💲")
    
}


