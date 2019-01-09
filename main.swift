//
//  main.swift
//  ElectricityBoard
//
//  Created by Soumik Mukherjee on 24/06/18.
//  Copyright © 2018 Soumik Mukherjee. All rights reserved.
//

import Foundation


var date:String
print("Enter the date")
date = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
date = date.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
var icons:String
print("Enter the consumer number:")
icons = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
icons = icons.replacingOccurrences(of: "\n", with: "",options: NSString.CompareOptions.literal, range: nil)
var cono = Int(icons)
var iuni: String
print("Enter the units consumed:")
iuni = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
iuni = iuni.replacingOccurrences(of: "\n", with: "",options: NSString.CompareOptions.literal, range: nil)
var units = Int(iuni)
var totcha:Float = 0.0
if units!<=100{
    totcha = (Float(units!)*2.5 + 75)
}
else if units!>100 && units!<200 {
    totcha = ((100.0*2.5) + (Float(units! - 100)*35) + 7.5)
}
else if units!>200 {
    totcha = ((100.0*2.5) + (100.0*3.5) + (Float(units!-200)*5.0) + 7.5)
}
print(" ")
print("     Bangalore Electricty Board")
print("Date:  \(date)               Bill No.: 123")
print("Consumer No.: \(cono!)")
print("------------------------------------------")
print("No: of units consumed: \(units!)")
print("Total Charge:          Rs.\(totcha)")
print("------------------------------------------")
