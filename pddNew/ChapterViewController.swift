//
//  ChapterViewController.swift
//  pddNew
//
//  Created by Lina Vasylieva on 4/30/17.
//  Copyright © 2017 Yumster. All rights reserved.
//

import UIKit

class ChapterViewController: UIViewController {

    var chapterID: Int = 0
    
    
    @IBOutlet weak var chapterName: UILabel!
    @IBOutlet weak var chapterDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
