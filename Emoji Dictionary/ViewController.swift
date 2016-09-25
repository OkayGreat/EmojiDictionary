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
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojis = makeEmojiArray()
        
        coolTable.dataSource = self
        coolTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
        
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with sun glasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👽"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "An alien face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐼"
        emoji3.birthYear = 2016
        emoji3.category = "Animal"
        emoji3.definition = "A panda face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐹"
        emoji4.birthYear = 2009
        emoji4.category = "Animal"
        emoji4.definition = "Hamster"
        
        return [emoji1, emoji2, emoji3, emoji4]
        
    }

}

