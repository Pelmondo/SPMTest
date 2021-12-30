//
//  HelloWorldSPM.swift
//  
//
//  Created by Сергей Прокопьев on 31.12.2021.
//

public class HelloWorldSPM {
    
    public weak var delegate: HelloWorldSPMDelegate?
    
    public func printText() {
        guard let message = delegate?.getText() else {
            print("delegate not set")
            return
        }
        print(message)
    }
    
    public init() {}
}

public protocol HelloWorldSPMDelegate: AnyObject {
    func getText() -> String
}
