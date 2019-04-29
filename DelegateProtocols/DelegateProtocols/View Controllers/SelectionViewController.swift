//
//  SelectionViewController.swift
//  DelegateProtocols
//
//  Created by Nelson Gonzalez on 4/28/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

protocol SelectionImageDelegate: AnyObject {
    //What do we need? We need a way to pass the name of the image back to the firstVC
    func addImage(named: String)
}

class SelectionViewController: UIViewController {
    
    weak var delegate: SelectionImageDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func spongeBobButtonPressed(_ sender: UIButton) {
        let imageName = "spongebob"
        delegate?.addImage(named: imageName)
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func patrickButtonPressed(_ sender: UIButton) {
        let imageName = "patrick"
        delegate?.addImage(named: imageName)
        navigationController?.popViewController(animated: true)
    }
    
}
