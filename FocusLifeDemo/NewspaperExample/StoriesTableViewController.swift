//
//  StoriesTableViewController.swift
//  NewspaperExample
//
//  Created by Maurin Arona on 2/10/19.
//  Copyright © 2019 Kyra Arona. All rights reserved.
//

import UIKit

struct Headline {
    
    var id : Int
    var title : String
    var text : String
    //var image : String
    
}

class StoriesTableViewController: UITableViewController {
    
    var headlines = [
        Headline(id: 1, title: "Algebra", text: "page 25, problems 1-17 odd"),
        Headline(id: 2, title: "English", text: "read \"Romeo and Juliet\" act 2"),
        Headline(id: 3, title: "Biology", text: "complete lab report"),
        ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return headlines.count
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section \(section)"
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Label Cell", for: indexPath)

        // Configure the cell...
        //cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        //cell.textLabel?.text = headlines[indexPath.row].title

        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        cell.detailTextLabel?.text = headline.text
        //cell.imageView?.image = UIImage(named: headline.image)
        
        return cell
    }

}
