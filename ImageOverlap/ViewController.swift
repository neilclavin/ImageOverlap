//
//  ViewController.swift
//  ImageOverlap
//
//  Created by Neil Clavin on 08.09.17.
//  Copyright © 2017 Neil Clavin. All rights reserved.
//

import UIKit
import Foundation




class ViewController: UIViewController {
    


    @IBOutlet weak var image1: UIImageView!


    @IBOutlet weak var image2: UIImageView!
    
    @IBAction func mergeImageTapped(_ sender: UIButton) {
        
        //var basicAlpha: Double = 0.5
    
        
        let bottomImage = UIImage(named: "luca1")!
        let bottomImageView = UIImageView(image: bottomImage)
        bottomImageView.alpha = 0.5
     
        
        let topImage = UIImage(named: "luca2")!
        let topImageView = UIImageView(image: topImage)
        topImageView.alpha = 0.5
        
        let newSize = CGSize(width:100, height: 100) // set this to what you need
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        
        //let basicAlpha = CGFloat(0.5)
        //let blendMode = 3
        
        bottomImage.draw(in: CGRect(origin: CGPoint.zero, size: newSize), blendMode: .normal, alpha: 1.0 )
        
       
        
        topImage.draw(in: CGRect(origin: CGPoint.zero, size: newSize), blendMode: .normal, alpha: 0.5 )
        
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        mergedImage.image = newImage
    }
    
    @IBOutlet weak var mergedImage: UIImageView!
    
    
    
    
    
    //func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
    //    return CGRect(x: x, y: y, width: width, height: height)
    //}
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

