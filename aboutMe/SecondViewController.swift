//
//  SecondViewController.swift
//  aboutMe
//
//  Created by Коstya on 07.02.2020.
//  Copyright © 2020 Коstya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var hello = ""
    var delegate: ViewControllerDelegate?

    @IBOutlet weak var helloName: UILabel!

    @IBOutlet weak var myPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloName.text = "Привет \(hello)"
        myPhoto.layer.cornerRadius = myPhoto.frame.width / 2

    }

    @IBAction func exitButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        delegate?.update(text: "")


    }
    
}
