import SwiftUI

struct Root: View {
    let browRunnerManager: BrowRunnerManager
    @State private var show: Bool = false

    var body: some View {
        VStack {
            Spacer()
            Button(
                action: {
                    show.toggle()
                    if show {
                        browRunnerManager.start()
                    }
                    else {
                        browRunnerManager.stop()
                    }
                },
                label: {
                    Text(show ? "Stop" : "Run")
                }
            )
            .foregroundStyle(Color.yellow)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(
            Image("bladerunner", bundle: .main)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        )
    }
}
