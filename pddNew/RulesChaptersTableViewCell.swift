//
//  RulesChaptersTableViewCell.swift
//  pddNew
//
//  Created by Lina Vasylieva on 4/30/17.
//  Copyright © 2017 Yumster. All rights reserved.
//

import UIKit

class RulesChaptersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chapterComplete: UISwitch!
    @IBOutlet weak var chapterName: UIButton!
    
    let chapter = NSDictionary()
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
