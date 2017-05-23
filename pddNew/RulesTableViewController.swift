//
//  RulesTableViewController.swift
//  pddNew
//
//  Created by Lina Vasylieva on 4/30/17.
//  Copyright © 2017 Yumster. All rights reserved.
//

import UIKit

class RulesTableViewController: UITableViewController {

    var rules = NSDictionary()
    
    
    func initData() -> NSDictionary {
        let url = Bundle.main.url(forResource: "pddRules", withExtension: "plist")!
        let pddRules = NSDictionary(contentsOf: url)!
        return pddRules
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rules = initData()
        navigationItem.title = "Chapters list"
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let rowCount = rules.count
                return rowCount
    }

    @IBAction func chapterClick(_ sender: UIButton) {
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "chapterCell", for: indexPath) as! RulesChaptersTableViewCell
        
        let ind = ((indexPath as NSIndexPath).row + 1).description
        let chapter  = rules[ind]
        
        if let chapterDict = chapter as? NSDictionary {
            let num = chapterDict["Number"] as! Int
            let name = chapterDict["Name"] as! String
            print(name)
            let title = num.description + " " + name
                cell.chapterName.setTitle(title, for:.normal)
        }
    
    
       // print(chapter["Name"])

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
   

}
