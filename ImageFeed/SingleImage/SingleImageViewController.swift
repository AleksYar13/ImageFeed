//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Александр Ярешко on 22.06.2023.
//

import UIKit

final class SingleImageViewController : UIViewController {
    var image: UIImage! {
        didSet {
            guard isViewLoaded else { return } // 1 было ли ранее загружено view
            imageView.image = image // 2
        }
    }
    @IBOutlet private var imageView: UIImageView!
    
    
    @IBAction private func didTapBackButton() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}
