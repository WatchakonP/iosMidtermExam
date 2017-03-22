//
//  ListViewController.swift
//  iOS
//
//  Created by Watcha Pon on 3/22/17.
//  Copyright © 2017 Indie Co. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    let list = ["Hello","Come To Me","Cold Water","Where Them Girl At","Blow Your Mind (Mwah)","Love On Me",
                "Thinking About You","Keep It Mellow","One Night Only","The Heart Wants What It Want"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = String(indexPath.row) + " " + list[ indexPath.row ]
        return cell
    }
    
    //    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        tableView.deselectRow(at: indexPath, animated: true)
    //        let vc = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
    //        self.present(vc, animated: true, completion: nil)
    //        vc.toPass = list[indexPath.row]
    //    }
    
    
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
