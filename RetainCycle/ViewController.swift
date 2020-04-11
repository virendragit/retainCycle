//
//  ViewController.swift
//  RetainCycle
//
//  Created by Virendra Gupta on 4/11/20.
//  Copyright © 2020 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show Red", style: .plain, target: self, action: #selector(handleShow))
    }
    
    @objc func handleShow() {
        navigationController?.pushViewController(redViewController(), animated: true)
    }
    
}

class redViewController:UITableViewController{
    
    
    deinit {
        print("No retain count so got executed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .systemPink
    }
    
}

