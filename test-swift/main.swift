//
//  main.swift
//  test-swift
//
//  Created by Denis Kohl on 11.03.17.
//  Copyright © 2017 Denis Kohl. All rights reserved.
//

import Foundation

print("Hello, World!")


let mydm : DataManager = MyDataManager()

let imp = ImpDataManager(dm: mydm)

imp.gogo(eingabe: "Mein Test")






Singeltion.Instance().getData()

let s1 = Singeltion.instance
let s2 = Singeltion.instance
s1.str = "Test1"
Singeltion.Instance().getData()
s2.str = "Test22"
Singeltion.Instance().getData()
s1.getData()



var obj: Factory?

let myTestStr = "Fab1"

switch(myTestStr){
    case "Fab1" :
    obj = Fab1()
    case "Fab2" :
    obj = Fab2()
default:
    obj = nil
    
}

print(obj!.myfunction(text: "Test Test"))
