//
//  MediaOverviewTableViewCell.swift
//  MovieTMDB
//
//  Created by Greed on 1/31/24.
//

import UIKit
import SnapKit

class MediaOverviewTableViewCell: BaseTableViewCell {

    let title = UILabel()
    let overviewLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureHierarchy() {
        contentView.addSubviews([title, overviewLabel])
    }
    
    override func configureLayout() {
        title.snp.makeConstraints { make in
            make.top.leading.equalTo(contentView).offset(16)
        }
        overviewLabel.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).offset(8)
            make.horizontalEdges.equalTo(contentView).inset(20)
        }
    }
    
    override func configureView() {
        title.text = "줄거리"
        title.textColor = .white
        title.font = .boldSystemFont(ofSize: 16)
        overviewLabel.textColor = .white
        overviewLabel.numberOfLines = 0
        overviewLabel.font = .systemFont(ofSize: 14)
    }

}
