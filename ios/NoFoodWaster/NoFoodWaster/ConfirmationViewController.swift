//
//  ConfirmationViewController.swift
//  NoFoodWaste
//
//  Created by Ravi Shankar on 29/11/15.
//  Copyright © 2015 Ravi Shankar. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var donationDetails: UILabel!
    @IBOutlet weak var deliveryDetails: UILabel!
    @IBOutlet weak var volunteerDetails: UILabel!
    
    @IBOutlet weak var donationTextView: UITextView!
    @IBOutlet weak var deliveryTextView: UITextView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Confirmation"
        
        applyStyle()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(true)
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        navigationItem.title = ""
        
        let barButtonItem = UIBarButtonItem.init(title: "Home", style: .Done, target: self, action: "callHome")
        
        self.navigationItem.leftBarButtonItem = barButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func deliver(sender: AnyObject) {
        
    }
    
    func applyStyle() {
        descriptionLabel.backgroundColor = backgroundColor
        view.backgroundColor = backgroundColor
        
        donationDetails.backgroundColor = backgroundColor
        deliveryDetails.backgroundColor = backgroundColor
        volunteerDetails.backgroundColor = backgroundColor
        donationTextView.backgroundColor = backgroundColor
        deliveryTextView.backgroundColor = backgroundColor
        
        nameLabel.backgroundColor = backgroundColor
        phoneLabel.backgroundColor = backgroundColor
        
        containerView.backgroundColor = backgroundColor
        
    }
    
    func callHome() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewControllerWithIdentifier("MainViewController")
        navigationController?.pushViewController(controller, animated: true)
    }
}
