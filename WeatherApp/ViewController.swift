//
//  ViewController.swift
//  WeatherApp
//
//  Created by Александр Кисть on 19.06.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                 
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "weatherCell", for: indexPath)
                    
            cell.backgroundColor = .red
            return cell
    }
    
    @IBOutlet weak var weatherCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weatherCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "weatherCell")
    
        weatherCollectionView.delegate = self
        weatherCollectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let screenSize = UIScreen.main.bounds
        return CGSize(width: screenSize.width, height: screenSize.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }
}
