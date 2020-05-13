//
//  ViewController.swift
//  Swift_travel
//
//  Created by 福井祐希 on 2020/05/13.
//  Copyright © 2020 Yuki Fukui. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    var onboardArray = ["1","2"]

    var onboardStringArray = ["世界と出逢おう","歴史を知れば、旅はもっと面白い"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isPagingEnabled = true
        setUpScroll()

        for i in 0...1{

            let animationView = AnimationView()
            let animation = Animation.named(onboardArray[i])
            animationView.frame = CGRect(x: CGFloat(i) * view.frame.size.width, y: 0, width: view.frame.size.width, height: view.frame.size.height)
            animationView.animation = animation
            animationView.contentMode = .scaleAspectFit
            animationView.loopMode = .loop
            animationView.play()
            self.scrollView.addSubview(animationView)

        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.isNavigationBarHidden = true


    }
    
    func setUpScroll(){

        scrollView.delegate = self

        scrollView.contentSize = CGSize(width: view.frame.size.width * 2, height: scrollView.frame.size.height)

        for i in 0...1{

            let onboardLabel = UILabel(frame: CGRect(x: CGFloat(i) * view.frame.size.width, y: view.frame.size.height/3, width: scrollView.frame.size.width, height: scrollView.frame.size.height))

            onboardLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            onboardLabel.textAlignment = .center
            onboardLabel.text = onboardStringArray[i]
            scrollView.addSubview(onboardLabel)
        }


    }

    
}

