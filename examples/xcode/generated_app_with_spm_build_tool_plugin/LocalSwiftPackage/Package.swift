// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LocalSwiftPackage",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "LocalSwiftPackage", targets: ["LocalSwiftPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/lukepistrol/SwiftLintPlugin", from: "0.55.0"),
    ],
    targets: [
        .target(
            name: "LocalSwiftPackage",
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin"),
            ]
        ),
    ]
)
