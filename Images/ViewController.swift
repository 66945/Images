//
//  ViewController.swift
//  Images
//
//  Created by McGrath, Daniel - Student on 1/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet
    weak var myImageView: UIImageView!
    
    let images = [
        UIImage(named: "Cows"),
        UIImage(named: "Image"),
        UIImage(named: "Cow2"),
    ]
    var imageNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = images[0]
    }
    
    @IBAction
    func onClick(_ sender: UIButton) {
        imageNum += 1
        imageNum %= images.count
        
        myImageView.image = images[imageNum]
    }
}
