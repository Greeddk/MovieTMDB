//
//  CastTableViewCell.swift
//  MovieTMDB
//
//  Created by Greed on 1/31/24.
//

import UIKit
import SnapKit

class CastTableViewCell: BaseTableViewCell {
    
    let title = UILabel()
    lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureHierarchy() {
        contentView.addSubviews([title, collectionView])
    }
    
    override func configureLayout() {
        title.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(4)
            make.leading.equalTo(contentView).offset(12)
        }
        
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(4)
            make.horizontalEdges.bottom.equalTo(contentView)
        }
    }
    
    override func configureView() {
        backgroundColor = .clear
        title.text = "배우"
        title.textColor = .white
        title.font = .boldSystemFont(ofSize: 16)
    }
    
    func collectionViewLayout() -> UICollectionViewLayout {
        
        let spacing: CGFloat = 10
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        layout.itemSize = CGSize(width: 130, height: 180)
        layout.scrollDirection = .horizontal
        
        return layout
    }

}
