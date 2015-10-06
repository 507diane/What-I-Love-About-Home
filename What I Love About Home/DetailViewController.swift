//
//  DetailViewController.swift
//  What I Love About Home
//
//  Created by Diane Christy on 10/5/15.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!
    //@IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }
    
        
            
            var productName: String? {
                didSet {
                    
        }
    }
            var productURL: NSString? {
                didSet {
                    // Update the view.
                    // self.configureView()
                }
            }
            
            func configureView() {
                // Update image if detailItem has been passed a value from MasterViewController Seque
                if let detail: AnyObject = self.detailItem {
                    productImageView.image = UIImage(named:productURL! as String)
                    
                }
            }
            
            override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
                print("Product URL: \(productURL)")
                print("Product Name: \(productName)")
                if productName == nil
                {
                    productImageView.image = UIImage(named:"New Orleans.jpg")
                }
                title = productName
                self.configureView()
            }
            
            override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
            }
        
}

