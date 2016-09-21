//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Adam Gendle on 9/20/16.
//  Copyright © 2016 Adam Gendle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTable: UITableView!
    
    var emojis = ["👽","🤕","🤑","🐼","🙉","🦄", "🐳"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coolTable.dataSource = self
        coolTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojis[indexPath.row]
        return cell

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

