//
//  Injector.swift
//  test-swift
//
//  Created by Denis Kohl on 11.03.17.
//  Copyright © 2017 Denis Kohl. All rights reserved.
//

import Foundation


protocol DataManager {
    func getSameDataBySelector(selector : String) -> String
}


class MyDataManager : DataManager {
    internal func getSameDataBySelector(selector: String) -> String {
     return "Das sind meine Daten. \(selector)"
    }
}


class ImpDataManager {
    let _dm : DataManager
    init(dm : DataManager) {
        self._dm = dm
    }
    
    func gogo(eingabe: String)  {
        print (self._dm.getSameDataBySelector(selector: eingabe))
    }
}

class Singeltion {
    
    var str : String = ""
    
    var count = 0
    
    static let instance = Singeltion()
    
    public static func Instance() -> Singeltion{
        return self.instance
    }
    
    public func getData(){
        count += 1
        print("Das sind meine Daten Eingabe: \(str) das ist der Count: \(count)")
    }
    private init(){}
}

protocol Factory {
    func myfunction(text: String) -> String
    
}

class  Fab1: Factory {
    internal func myfunction(text: String) -> String {
        return "Fab1 \(text)"
    }
}

class Fab2: Factory {
    internal func myfunction(text: String) -> String {
        return "Fab2 \(text)"
    }

    
}

class Fab3: Factory {
    internal func myfunction(text: String) -> String {
        return "Fab3 \(text)"
    }
    
    
}





