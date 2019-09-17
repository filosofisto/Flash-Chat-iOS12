//
//  MessageHelper.swift
//  Flash Chat
//
//  Created by Eduardo Ribeiro da Silva on 17/09/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation
import UIKit

class MessageHelper {
    
    static func error(_ text: String, controller: UIViewController) {
        let alert = UIAlertController(title: "Erro", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        controller.present(alert, animated: true)
    }
}
