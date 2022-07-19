//
//  TableViewController1.swift
//  ToDo_List
//
//  Created by scholar on 7/18/22.
//

import UIKit

class TableViewController1: UITableViewController {
    
    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    
        toDos = createToDos()

        
        
        
    }
    func createToDos() -> [ToDo] {

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
    

    // MARK: - Table view data source

    
    
    
    
    
    
    /*
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    */
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

     
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let ToDo = toDos[indexPath.row]
        if ToDo.important {
            cell.textLabel?.text = "❗️" + ToDo.name
          } else {
            cell.textLabel?.text = ToDo.name
          }
        return cell
    }
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
