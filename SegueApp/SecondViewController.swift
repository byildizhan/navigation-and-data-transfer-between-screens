//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Batuhan YILDIZHAN on 15.01.2025.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondViewControllerLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
    }
    


}
