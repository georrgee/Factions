//
//  MainScreenViewController.swift
//  Factions
//
//  Created by George Garcia on 4/17/19.
//  Copyright © 2019 GeeTeam. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    // MARK: IBActions
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionViewController = storyboard?.instantiateViewController(withIdentifier: "SelectionScreenViewController") as! SelectionScreenViewController
        selectionViewController.selectionDelegate = self
        present(selectionViewController, animated: true, completion: nil)
    }
    
    // MARK: View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChooseButtonUI()

    }
    // MARK: Private Methods
    private func setupChooseButtonUI() {
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height / 2
    }
}

extension MainScreenViewController: SideSelectionDelegate {
    
    func didTapFaction(image: UIImage, message: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = message
        view.backgroundColor = color
    }
}
