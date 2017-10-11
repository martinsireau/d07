//
//  ViewController.swift
//  d07
//
//  Created by Martin SIREAU on 10/11/17.
//  Copyright © 2017 Martin SIREAU. All rights reserved.
//

import UIKit
import RecastAI

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    let bot = RecastAIClient(token : "86e58d61cf0d5e00923fc2dfd506d48b", language: "fr")
    let forecastToken = "a265eff50f4af5817a0cac58a3afa3a7"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func makeRequest(request: String){
        self.bot.textRequest(request, successHandler: { reponse in
            print("response = \(reponse)")
            print("\n otherOne:")
            if let myRes = reponse.entities?["location"] as? [[String : Any]]{
                print(myRes[0]["lat"] ?? "no Lat")
                print(myRes[0]["lng"] ?? "no Lat")
            }
        }
            , failureHandle: {fail in
                print("faillll = \(fail)")
        })
    }
    
    @IBAction func myButton(_ sender: Any) {
        self.makeRequest(request: myTextField.text!)
    }
    
}

