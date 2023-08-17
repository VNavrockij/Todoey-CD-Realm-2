//
//  CategoryTableViewController.swift
//  Todoey-CD-Realm-2
//
//  Created by Vitalii Navrotskyi on 15.08.2023.
//

import UIKit
import CoreData

//TODO: - Implement CoreData for Category and update methods

class CategoryTableViewController: UITableViewController {
    
    var arr: [String] = ["123", "234", "345"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    //MARK: - TableView Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }
    
    
    
    //MARK: - TableView Manipulations Methods
    
    
    
    //MARK: - TableView Delegate Methods
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add New Category", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            if let newItem = textField.text {
                self.arr.append(newItem)
                self.tableView.reloadData()
            }
        }
        alert.addTextField() { (alertTextField) in
            alertTextField.placeholder = "Create new Category"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
}
