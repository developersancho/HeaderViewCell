//
//  ViewController.swift
//  HeaderViewCell
//
//  Created by developersancho on 20.05.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit

struct postStruct {
    var image : UIImage!
    var name : String!
}

var heightOfHeader : CGFloat = 50

class ViewController: UITableViewController {
    
    var arrayOfPosts = [postStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfPosts = [postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart1"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart2"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart3"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart4"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart5"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart6"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart7"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart2"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart3"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart4"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart5"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart6"),
                        postStruct.init(image: #imageLiteral(resourceName: "heart"), name: "heart7")]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as UITableViewCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfPosts.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightOfHeader
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        
        headerView.headerImageView.image = arrayOfPosts[section].image
        headerView.headerLabel.text = arrayOfPosts[section].name
        
        return headerView
    }
    
}

