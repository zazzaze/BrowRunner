import UIKit

public final class BrowRunner {
    private static var view: UIView?

    public static func run(window: UIWindow, image: UIImage) {
        let view = RunnerView(image: image)
        window.addSubview(view)
        self.view = view
    }

    public static func stop() {
        view?.removeFromSuperview()
    }
}

final class RunnerView: UIView {
    private let runner: UIImageView

    init(image: UIImage) {
        let imageView = UIImageView(frame: .init(x: 0, y: 0, width: 20, height: 50))
        imageView.image = image
        self.runner = imageView
        super.init(
            frame: .init(
                x: 150,
                y: 50,
                width: 100,
                height: 50
            )
        )
        self.addSubview(runner)
        startAnimation()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func startAnimation() {
        animation(trailing: true)
    }

    private func animation(trailing: Bool) {
//        runner.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        UIView.animate(withDuration: 2, animations: {
            self.runner.frame = .init(
                x: trailing ? 80 : 0,
                y: 0,
                width: 20,
                height: 50
            )
        }, completion: { _ in
            self.animation(trailing: !trailing)
        })
    }
}
