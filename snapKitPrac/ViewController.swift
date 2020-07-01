//
//  ViewController.swift
//  snapKitPrac
//
//  Created by 권성우 on 2020/06/10.
//  Copyright © 2020 권성우. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var view1 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    
    lazy var view2 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.cyan
        return view
    }()
    
    lazy var view3 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    lazy var view4 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    lazy var view5 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.yellow
        return view
    }()
    
    lazy var view6 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    
    lazy var view7 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.purple
        return view
    }()
    
    lazy var view8 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.lightGray
        return view
    }()
    
    lazy var view9 : UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.darkGray
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        /* 상단 디자인*/
        self.view.addSubview(view1)
        view1.snp.makeConstraints { (m) in
            m.width.equalTo(view)
            m.height.equalTo(64)
            m.top.equalTo(view).offset(44)
        }
        
        view1.addSubview(view2)
        view2.snp.makeConstraints { (m) in
            m.width.equalTo(view1.snp.height)
            m.height.equalTo(view1.snp.height)
            m.left.equalTo(view1.snp.left)
            //left의 값이 snp.left와 같을 경우
            //snp.left 생략 가능하다.
            //m.left.equalTo(view1)
            m.top.equalTo(view1.snp.top)
        }
        
        view2.addSubview(view3)
        view3.snp.makeConstraints { (m) in
            m.width.equalTo(view1.snp.height)
            m.height.equalTo(view1.snp.height)
            m.right.equalTo(view1)
            m.top.equalTo(view1)
        }
        
        /* 하단 디자인*/
        self.view.addSubview(view4)
        view4.snp.makeConstraints { (m) in
            m.width.equalTo(view).dividedBy(4)
            m.height.equalTo(view4.snp.width)
            m.left.equalTo(view.snp.left)
            m.bottom.equalTo(view).offset(-34)
        }
        
        self.view.addSubview(view5)
        view5.snp.makeConstraints { (m) in
            m.width.equalTo(view).dividedBy(4)
            m.height.equalTo(view4.snp.width)
            m.left.equalTo(view4.snp.right)
            m.bottom.equalTo(view).offset(-34)
        }
        self.view.addSubview(view6)
        view6.snp.makeConstraints { (m) in
            m.width.equalTo(view).dividedBy(4)
            m.height.equalTo(view4.snp.width)
            m.left.equalTo(view5.snp.right)
            m.bottom.equalTo(view).offset(-34)
        }
        self.view.addSubview(view7)
        view7.snp.makeConstraints { (m) in
            m.width.equalTo(view).dividedBy(4)
            m.height.equalTo(view4.snp.width)
            m.left.equalTo(view6.snp.right)
            m.bottom.equalTo(view).offset(-34)
        }
        
        /*중앙 디자인*/
        self.view.addSubview(view8)
        view8.snp.makeConstraints { (m) in
            m.left.equalTo(view)
            m.right.equalTo(view)
            m.top.equalTo(view1.snp.bottom)
            m.bottom.equalTo(view4.snp.top)
        }
        
        view8.addSubview(view9)
        view9.snp.makeConstraints { (m) in
            m.left.equalTo(view8).offset(5)
            m.right.equalTo(view8).offset(-5)
            m.top.equalTo(view8).offset(5)
            m.bottom.equalTo(view8).offset(-5)
        }
    }
    


}

