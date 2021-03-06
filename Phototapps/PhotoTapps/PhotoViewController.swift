//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Khamitov Darkhan on 5/22/21.
//  Copyright © 2021 Алексей Пархоменко. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = {
            _,bool,_,_ in print("Work")
        }
        present(shareController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
