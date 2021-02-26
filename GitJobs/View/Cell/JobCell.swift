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
            if let title = job?.title {
                self.jobTitle.text = title
            }
            
            if let company = job?.company {
                self.companyName.text = company
            }
            
            if let location = job?.location {
                self.jobLocation.text = location
            }
            
            if let date = job?.created_at {
                self.createdDate.text = date
            }
        }
    }
    
    var jobLogo: UIImageView = {
        let image = UIImageView(image: nil)
        image.backgroundColor = .lightGray
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        
        return image
    }()
    
    var jobTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .left
        label.text = "iOS Software Engineer"
        label.textColor = .black
        
        return label
    }()
    
    var companyName: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        label.text = "Bank Respublika"
        label.textColor = .black
        
        return label
    }()
    
    var jobLocation: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        label.text = "Baku, Azerbaijan"
        label.textColor = .black
        
        return label
    }()
    
    var createdDate: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textAlignment = .left
        label.text = "Wed Feb 24 15:46"
        label.textColor = .black
        
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        self.addSubview(jobLogo)
        self.addSubview(jobTitle)
        self.addSubview(companyName)
        self.addSubview(jobLocation)
        self.addSubview(createdDate)
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        let borderColor: UIColor = .black
        self.layer.borderColor = borderColor.cgColor
        
        jobLogo.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 80, height: 80, enableInsets: false)
    }
}
