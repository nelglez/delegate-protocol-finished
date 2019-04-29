//
//  ViewController.swift
//  DelegateProtocols
//
//  Created by Nelson Gonzalez on 4/28/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SelectionVC" {
            if let destinationVC = segue.destination as? SelectionViewController {
                destinationVC.delegate = self
            }
        }
    }
    
}

extension FirstViewController: SelectionImageDelegate {
    func addImage(named: String) {
        imageView.image = UIImage(named: named)
    }
    
    
}
