//
//  ViewController.swift
//  SegueApp
//
//  Created by Batuhan YILDIZHAN on 15.01.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstViewController: UILabel!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = ""
    }
    
    @IBAction func pushButton(_ sender: Any) {
        name = nameTextField.text ?? "Default Name"
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = name
        }
        
        
    }


}

