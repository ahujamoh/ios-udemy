//
//  ViewController.swift
//  photoshare
//
//  Created by Mohit on 02/03/17.
//  Copyright © 2017 ahujamoh. All rights reserved.
//

import UIKit
//paired with the one in storyboard
//xcassets: code
//plist: app settings
//main view of our app

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    var picker: UIImagePickerController!
    @IBAction func shareButtonClicked(_ sender: AnyObject) {
        Ostetso.share(imageView.image)
    }
    @IBAction func chooseButtonClicked(_ sender: AnyObject) {
        present(self.picker, animated: true, completion:nil)
    }
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        //fired once the view has actually loaded and ready to display
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        Ostetso.showGallery()
        //stop sharing from Ostetso
        picker = UIImagePickerController() //picker created, specify deligate
        picker.delegate = self

    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //after finishing media, it comes here.
        //tries to get an image from the info that is returned
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            //put the picked image in the imageview
            imageView.image = pickedImage
            shareButton.isEnabled = true
        }
        dismiss(animated: true, completion: nil) //dismissing the p
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//now we will learn something called

}

