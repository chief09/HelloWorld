//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//let vs var
//let is used to declare a constant
//var is used to declare a variable

// the value of let cannot be modify but the value of var can be modify

var name = "ken"

print(name)

name = "Pok Wee Ken"

print(name)

//Implicit vs Explicit Typing

let macPrice : Double = 1999
let deliveryCharge = 99.99

let totalPrice = macPrice + deliveryCharge

//With implicit typing, Swift guess the data type based on the initial value
//If we want to force type it, we have to explucitly mentioned it during declaration
//Swift is a safe-type language, so only operation from same data type is allowed.

//If - else

let motivatedMsg = "Congratulation you are motivated!"
let motivationMsg = "Don't give up easily. This is only the first day"

let motivated = true
if motivated == true  && name == "Pok Wee Ken"{
    print(motivatedMsg)
}
else {
    print(motivationMsg)
}

//Semicolon is optional in Swift
//Colon is optional in Swift
//Curly bracket is compulsory although is only one line statement

//for loop and array

var studentsMark = [80,98,76,90,88,72]
studentsMark.append(80)

studentsMark.count

studentsMark[1]

for student in studentsMark{
    print(student)
}

//... represent until
//..< represent until less than
for i in 0..<studentsMark.count{
    print("student \(i) is \(studentsMark[i])")
}

// Dictionary and Optional binding

var myInfo = ["name":"ken", "company":"Newera", "phone":"0199596883", "email":"weeken.pok@newera.edu.my"]

var momInfo = ["name":"fong", "phone":"018xxxxxx"]

print(myInfo)
print(myInfo["name"])

//Optional data type
//An optional is a data type that can be a normal Data Type or nil

//Get the value through
//1. Optional Binding

if let name = myInfo["name"] {
    print(name)
}

//2. Force Unwrap

print(myInfo["name"]!)
print(momInfo["name"]!)
//print(momInfo["email"]!) force unwrap will cause error when the value is nil, use option binding for safe purpose
