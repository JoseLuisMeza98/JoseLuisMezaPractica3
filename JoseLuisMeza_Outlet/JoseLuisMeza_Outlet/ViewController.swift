//
//  ViewController.swift
//  JoseLuisMeza_Outlet
//
//  Created by Universidad Politecnica de Gómez Palacio on 26/02/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txfFullName: UITextField!
    
    
    @IBAction func sendData(_ sender: Any) {
        //self.txfFullName.text = "Hola Mundo"
        let fullName: String = self.txfFullName.text ?? ""
        self.performSegue(withIdentifier: "sgSecondTVC", sender: fullName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sgSecondTVC"
        {
            if let secondTVC: SecondTVC = segue.destination as? SecondTVC
            {
                if let fullName: String = sender as? String
                {
                    secondTVC.fullName = fullName
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.txfFullName.text = "Jose Luis Meza Salayandia"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

