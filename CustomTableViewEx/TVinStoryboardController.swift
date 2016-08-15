//
//  TVinStoryboardController.swift
//  CustomTableViewEx
//
//  Created by 김혜지 on 2016. 8. 15..
//  Copyright © 2016년 김혜지. All rights reserved.
//


import UIKit

class TVinStoryboardController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    let menus = ["swift","tableview","example"]
    let images = ["dog1","dog2","dog3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackButtonAction(sender: AnyObject) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}

extension TVinStoryboardController: UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCellWithIdentifier("FirstCustomCell", forIndexPath: indexPath) as! FirstCustomCell
        
        cell.tvLabel.text = menus[indexPath.row]
        cell.tvImageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
}

extension TVinStoryboardController: UITableViewDelegate{
    
}
