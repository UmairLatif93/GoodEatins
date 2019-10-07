//
//  ViewController.swift
//  Good Eatins
//
//  Created by Umair Latif on 07/10/2019.
//  Copyright © 2019 Umair Latif. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet weak var tableView: UITableView!
    
    let data = DataSet()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
        return data.categories.count
        
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell {
            
            cell.configureCell(category: data.categories[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
    }
       
}

