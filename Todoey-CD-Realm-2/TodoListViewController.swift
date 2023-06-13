//
//  ViewController.swift
//  Todoey-CD-Realm-2
//
//  Created by Vitalii Navrotskyi on 06.06.2023.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = ["Hello", "World", "Again"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    
    //MARK: - Add button
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        print("Ok")
        itemArray.append("new item")
        tableView.reloadData()
    }
    
}



