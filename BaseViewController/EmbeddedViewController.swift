//
//  EmbbedViewController.swift
//  BaseViewController
//
//  Created by donaldsong on 17-8-18.
//  Copyright © 2017 Tencent. All rights reserved.
//

import UIKit

class EmbeddedViewController: BaseViewController {

    override func viewDidLoad() {
        print(self, #function)
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    override func viewWillAppear(_ animated: Bool) {
        print(self, #function, animated)
        super.viewWillAppear(animated)
    }

    override func viewWillLayoutSubviews() {
        print(self, #function)
        super.viewWillLayoutSubviews()
    }

    override func viewDidLayoutSubviews() {
        print(self, #function)
        super.viewDidLayoutSubviews()
    }

    override func viewDidAppear(_ animated: Bool) {
        print(self, #function, animated)
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print(self, #function, animated)
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        print(self, #function, animated)
        super.viewDidDisappear(animated)
    }


    // MARK: - ChildViewController

    override func addChildViewController(_ childController: UIViewController) {
        print(self, #function, childController)
        super.addChildViewController(childController)
    }
    override func removeFromParentViewController() {
        print(self, #function)
        super.removeFromParentViewController()
    }

    override func willMove(toParentViewController parent: UIViewController?) {
        print(self, #function, String(describing: parent))
        super.willMove(toParentViewController: parent)
    }
    override func didMove(toParentViewController parent: UIViewController?) {
        print(self, #function, String(describing: parent))
        super.didMove(toParentViewController: parent)
    }


    // MARK: - Navigation

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(self, #function, identifier, String(describing: sender))
        return super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(self, #function, segue.destination, String(describing: sender))
        super.prepare(for: segue, sender: sender)
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        print(self, #function, identifier, String(describing: sender))
        super.performSegue(withIdentifier: identifier, sender: sender)
    }

    // MARK: - Target-Action

    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        print(self, #function, action, String(describing: sender))
        return super.canPerformAction(action, withSender: sender)
    }
    override func target(forAction action: Selector, withSender sender: Any?) -> Any? {
        let t = super.target(forAction: action, withSender: sender)
        print(self, #function, action, String(describing: sender), "result is:", String(describing: t))
        return t
    }
    override func targetViewController(forAction action: Selector, sender: Any?) -> UIViewController? {
        let vc = super.targetViewController(forAction: action, sender: sender)
        print(self, #function, action, String(describing: sender), "result is:", String(describing: vc))
        return vc
    }
}
