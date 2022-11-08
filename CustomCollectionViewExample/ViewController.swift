//
//  ViewController.swift
//  CustomCollectionViewExample
//
//  Created by JotaroSugiyama on 2022/11/08.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    @IBOutlet var collectionView: UICollectionView!
    
    let playlists = [
        ["green_apple", "青りんごさん"],
        ["karaoke_kids", "子供に人気"],
        ["karaoke_otoshiyori", "お年寄りに人気"],
        ["musician", "今人気のミュージシャン"],
        ["official_hige", "公式髭男爵"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: collectionView.frame.width / 2 - 20 , height: 46)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        collectionView.collectionViewLayout = layout
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        playlists.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)
        
        if let cell = cell as? CustomCell {
            cell.setupCell(imageName: playlists[indexPath.row][0], labelText: playlists[indexPath.row][1])
        }
        
        return cell
    }

}

