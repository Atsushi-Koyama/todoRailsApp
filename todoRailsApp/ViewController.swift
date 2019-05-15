//
//  ViewController.swift
//  todoRailsApp
//
//  Created by test on 2019/05/07.
//  Copyright © 2019 COML. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var todoDataArray = [TodoData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        numberOfRowsInSection
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        テーブルセルの取得処理
//        return cell
        let cell =  tableView.dequeueReusableCell(withIdentifier: 'todoCell', for: indexPath) as! toDoTableViewCell
        let todoData = todoDataArray[indexPath.row]
        
        
    }
    
    
    
    


}

