//
//  ViewController.swift
//  M7Assignment
//
//  Created by Emma Brennan on 2/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // create 10 cell options for top 10 languages (according to Wikipedia) that are supported by Google translate
    var languages = [
        Language("Chinese (Mandarin)", "Nǐ hǎo"),
        Language("Spanish", "Hola"),
        Language("English", "Hello"),
        Language("Hindi", "Namaste"),
        Language("Portugese", "Olá"),
        Language("Russian", "Privet"),
        Language("Japanese", "Kon'nichiwa"),
        Language("Vietnamese", "Xin chào"),
        Language("Turkish", "Merhaba"),
        Language("Korean", "Annyeonghaseyo")
    ]
    
    var selection = "Hello"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = languages[indexPath.row].language
        cell.contentConfiguration = content
        return cell
    }
    
    // the segue prepare performs before the update var selection, so the translation that appears on the popup corresponds to the last selection
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selection = languages[indexPath.row].translation
        self.performSegue(withIdentifier: "toTranslation", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toTranslation" {
            let translation = segue.destination as! TranslationViewController
            translation.hello = selection
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

