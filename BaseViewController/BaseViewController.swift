//
//  BaseViewController.swift
//  BaseViewController
//
//  Created by donaldsong on 17-8-18.
//  Copyright © 2017 Tencent. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func beginAppearanceTransition(_ isAppearing: Bool, animated: Bool) {
        print(self, #function, isAppearing, animated)
        super.beginAppearanceTransition(isAppearing, animated: animated)
    }

    override func endAppearanceTransition() {
        print(self, #function)
        super.endAppearanceTransition()
    }

    override func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIViewAnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil) {
        print(self, #function, fromViewController, toViewController, duration, options, String(unwrap: animations), String(unwrap: completion))
        super.transition(from: fromViewController, to: toViewController, duration: duration, options: options, animations: animations, completion: completion)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print(self, #function, size, coordinator)
        super.viewWillTransition(to: size, with: coordinator)
    }
    override func overrideTraitCollection(forChildViewController childViewController: UIViewController) -> UITraitCollection? {
        let tc = super.overrideTraitCollection(forChildViewController: childViewController)
        print(self, #function, childViewController, "result is:", String(describing: tc))
        return tc
    }
}


// MARK: - Optional Unwrap 并转化为字符串

enum UnwrapType {
    case describing
    case reflecting
}

extension String {

    /// 将任意的Optional类型转化为String，并不会用Optional(abc)这样的包裹形式
    ///
    /// - Parameter unwrap: 需要被unwrap的类型
    /// - Parameter type: unwrap的两种方式，其中reflecting方式会更详细
    /// - Returns: 转为String后的结果
    init<Subject>(unwrap instance: Subject?, type: UnwrapType = .describing) {
        guard let i = instance else {
            self.init("nil")!
            return
        }
        switch type {
        case .describing:
            self.init(describing: i)
        case .reflecting:
            self.init(reflecting: i)
        }
    }
}
