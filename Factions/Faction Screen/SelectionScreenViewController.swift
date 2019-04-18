//  SelectionScreenViewController.swift
//  Factions

//  Created by George Garcia on 4/17/19.
//  Copyright © 2019 GeeTeam. All rights reserved.

import UIKit

protocol SideSelectionDelegate {
    func didTapFaction(image: UIImage, message: String, color: UIColor)
}

class SelectionScreenViewController: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate! 
    
    @IBAction func huntersButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapFaction(image: UIImage(named: "hunters_side")!, message: "Welcome to the Hunters", color: .blue)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func firefliesButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTapFaction(image: UIImage(named: "fireflies_side")!, message: "Welcome to the Fire Flies", color: .yellow)
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
