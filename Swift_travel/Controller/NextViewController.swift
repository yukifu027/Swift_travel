//
//  NextViewController.swift
//  Swift_travel
//
//  Created by 福井祐希 on 2020/05/13.
//  Copyright © 2020 Yuki Fukui. All rights reserved.
//

import UIKit


class NextViewController: UIViewController {
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIScrollViewのインスタンス作成
        let scrollView = UIScrollView()

        //scrollViewの大きさを設定。
        scrollView.frame = self.view.frame

        //スクロール領域の設定
        scrollView.contentSize = CGSize(width:self.view.frame.width, height:1000)

        //scrollViewをviewのSubViewとして追加
        self.view.addSubview(scrollView)

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
