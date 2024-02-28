import UIKit
import BrowRunner

final class BrowRunnerManager {
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        BrowRunner.run(window: window, image: UIImage(named: "runner") ?? UIImage())
    }

    func stop() {
        BrowRunner.stop()
    }
}
