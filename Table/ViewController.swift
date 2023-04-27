//
//  ViewController.swift
//  Table
//
//  Created by Mohan K on 14/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalTableView: UITableView!
    
    var str = ["one", "two", "uygr", "one", "two", "uygr", "one", "two", "uygr", "one", "two", "uygr", "one", "two", "uygr", "one", "two", "uygr", "one", "two", "uygr"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalTableView.delegate = self
        animalTableView.dataSource = self
      
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexpath: IndexPath) {
        print("you ping me!.")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return str.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalcell", for: indexpath)
        cell.textLabel?.text = str[indexpath.row]
        return cell
    }
    
}
