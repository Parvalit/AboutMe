//
//  ViewController.swift
//  aboutMe
//
//  Created by Коstya on 07.02.2020.
//  Copyright © 2020 Коstya. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate: class {
    func update(text: String)
}

class ViewController: UIViewController, ViewControllerDelegate {
    
    @IBOutlet weak var lableLogin: UITextField!
    @IBOutlet weak var lablePassword: UITextField!
    
    @IBOutlet weak var testLable: UILabel!
    
    @IBOutlet weak var buttonSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSignIn.layer.cornerRadius = 4
    }
    
    let login = "Alex"
    let password = "12345"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
        destination.hello = login
        destination.delegate = self
        }
    }
    func update(text: String) {
        lableLogin.text = text
        lablePassword.text = text
    }
    
    @IBAction func ActionButtonSignIn(_ sender: Any) {
        if lableLogin.text == login && lablePassword.text == password {
            performSegue(withIdentifier: "goSecondVC", sender: nil)
        } else if lableLogin.text != login || lablePassword.text != password {
            testLable.text = "попробуй еще раз"
        }
        
    }
    
    @IBAction func helpPopup(_ sender: Any) {
        let alert = UIAlertController(title: "Подсказка", message: "логин - Alex; пароль - 12345", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .cancel)
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}
