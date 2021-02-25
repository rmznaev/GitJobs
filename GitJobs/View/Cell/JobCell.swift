//
//  JobCell.swift
//  GitJobs
//
//  Created by Ramazan Abdullayev on 25.02.21.
//

import UIKit

class JobCell: UITableViewCell {
    
    var job: Job? {
        didSet {
            
        }
    }
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
