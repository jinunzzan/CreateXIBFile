//
//  ViewController.swift
//  CreateXIBFile
//
//  Created by Eunchan Kim on 2022/10/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var arr = ["a", "b", "c", "d"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil) //nibName에는 TableViewCell의 파일 이름을
        tableView.register(nibName, forCellReuseIdentifier: "Cell") //forCellReuseIdentifier에는 cell의 identifier을 쓴다
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.lable.text = arr[indexPath.row]
        
        return cell
    }
    
    
}
