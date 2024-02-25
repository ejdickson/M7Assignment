//
//  TranslationViewController.swift
//  M7Assignment
//
//  Created by Emma Brennan on 2/25/24.
//

import UIKit

class TranslationViewController: UIViewController {
    
    var hello = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = hello
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var helloLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
