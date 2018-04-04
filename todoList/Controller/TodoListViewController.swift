//
//  TodoListTableViewController.swift
//  todoList
//
//  Created by Trung Pham on 4/4/18.
//  Copyright © 2018 Trung Pham. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["Item1", "Item2", "Item3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = false
// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Itemcell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]

        return cell
    }
 

}
