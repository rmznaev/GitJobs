//
//  MainViewController.swift
//  GitJobs
//
//  Created by Ramazan Abdullayev on 25.02.21.
//

import UIKit

class MainViewController: UIViewController {
    
    private let tableCellID = "tableCellID"
    
    let jobs = [Job(name: "iOS Developer"),
                Job(name: "Android Developer"),
                Job(name: "Backend Developer")]
    
    lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(UITableViewCell.self, forCellReuseIdentifier: tableCellID)
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    private func configureUI() {
        
        view.addSubview(tableView)
        tableView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
    }

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableCellID, for: indexPath)
        cell.textLabel?.text = jobs[indexPath.row].name
        
        return cell
    }

}
