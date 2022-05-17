//
//  MainTabBarController.swift
//  Unsplash
//
//  Created by Кирилл  Геллерт on 17.05.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        setViewControllers([
            UINavigationController(rootViewController: PhotosViewController(), withLargeTitle: true),
            UINavigationController(rootViewController: FavouritePhotosViewController(), withLargeTitle: true),
        ], animated: true)
        
        if let items = tabBar.items {
            
            let titlesAndImages: KeyValuePairs = [
                "Случайные фото": K.SystemImage.photos,
                "Любимые фото": K.SystemImage.heart
            ]
            
            for index in titlesAndImages.indices {
                items[index].title = titlesAndImages[index].key
                items[index].image = titlesAndImages[index].value
            }
            
            tabBar.unselectedItemTintColor = .gray
            tabBar.tintColor = .systemOrange
            tabBar.barTintColor = .black
            tabBar.backgroundColor = .black
        }
    }
    

}
