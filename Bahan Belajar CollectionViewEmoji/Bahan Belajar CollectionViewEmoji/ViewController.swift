//
//  ViewController.swift
//  Bahan Belajar CollectionViewEmoji
//
//  Created by Manggala Tanri on 15/09/21.
//  Copyright © 2021 Manggala Tanri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Str: UILabel!
    var kalimat1 = "Janda Muda"
    
    @IBOutlet var gambar: UIImageView!
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .black
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.purple;
        Str.text=kalimat1
        gambar.image = imageView.image
        getRandomPhotos()
    }

    func getRandomPhotos() {
        let urlString = "https://source.unsplash/random/600x600"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else
        {
            return
        }
        imageView.image = UIImage(data: data)
    }
    
    
    
    
    

}

