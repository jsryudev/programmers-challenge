//
//  SplashViewController.swift
//  News Reader
//
//  Created by 유준상 on 2020/03/20.
//  Copyright © 2020 JunSang Ryu. All rights reserved.
//

import UIKit

import SnapKit
import Then

class SplashViewController: BaseViewController {
  
  let circleView = UIView().then {
    $0.backgroundColor = .lightGray
    $0.layer.cornerRadius = 75
  }
  
  let rssImageView = UIImageView().then {
    $0.image = UIImage(named: "rss-icon")
  }
  
  let logoImageView = UIImageView().then {
    $0.image = UIImage(named: "news-icon")
  }
  
  let worldWideImageView = UIImageView().then {
    $0.image = UIImage(named: "worldwide-icon")
  }
  
  let descriptionStackView = UIStackView().then {
    $0.axis = .vertical
    $0.spacing = 10
  }
  
  // FIXME: naming
  let description1Label = UILabel().then {
    $0.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
    $0.textColor = .darkGray
    $0.text = "최신 뉴스를 제공합니다."
  }
  
  let description2Label = UILabel().then {
    $0.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
    $0.textColor = .darkGray
    $0.text = "뉴스의 키워드를 알아보세요"
  }
  
  let description3Label = UILabel().then {
    $0.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
    $0.textColor = .darkGray
    $0.numberOfLines = 0
    $0.text = "뉴스를 클릭하면 원본 뉴스를\n볼 수 있습니다."
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func addSubViews() {
    circleView.addSubview(logoImageView)
    
    descriptionStackView.addArrangedSubview(description1Label)
    descriptionStackView.addArrangedSubview(description2Label)
    descriptionStackView.addArrangedSubview(description3Label)

    self.view.addSubview(rssImageView)
    self.view.addSubview(worldWideImageView)
    self.view.addSubview(circleView)
    self.view.addSubview(descriptionStackView)
  }
  
  override func setupConstraints() {
    circleView.snp.makeConstraints { make in
      make.center.equalToSuperview()
      make.height.equalTo(circleView.snp.width).multipliedBy(1)
      make.height.equalTo(150)
    }
    
    logoImageView.snp.makeConstraints { make in
      make.top.left.equalToSuperview().offset(25)
      make.bottom.right.equalToSuperview().offset(-25)
    }
    
    rssImageView.snp.makeConstraints { make in
      make.height.equalTo(circleView.snp.height).multipliedBy(0.33)
      make.width.equalTo(circleView.snp.width).multipliedBy(0.33)
      make.right.equalTo(circleView.snp.left).offset(-30)
      make.bottom.equalTo(circleView.snp.bottom)
    }
    
    worldWideImageView.snp.makeConstraints { make in
      make.height.equalTo(circleView.snp.height).multipliedBy(0.33)
      make.width.equalTo(circleView.snp.width).multipliedBy(0.33)
      make.left.equalTo(circleView.snp.right).offset(30)
      make.bottom.equalTo(circleView.snp.bottom)
    }
    
    descriptionStackView.snp.makeConstraints { make in
      make.top.equalTo(circleView.snp.bottom).offset(50)
      make.centerX.equalToSuperview()
    }
  }
}
