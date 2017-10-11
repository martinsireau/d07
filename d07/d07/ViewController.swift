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

    let bot = RecastAIClient(token : "86e58d61cf0d5e00923fc2dfd506d48b", language: "fr")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.makeRequest()
    }

    func makeRequest()
    {
        self.bot.textRequest("Hello", successHandler: { reponse in
            print("response = \(reponse)")
        }
            , failureHandle: {fail in
                print("fail = \(fail)")
        })
    }
}

