// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CombineExt",
    platforms: [
        .iOS(.v12), .macOS(.v10_14), .tvOS(.v12), .watchOS(.v5) 
    ],
    products: [
        .library(name: "CombineExt", targets: ["CombineExt"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/combine-schedulers", from: "0.1.2"),
    ],
    targets: [
        .target(name: "CombineExt", dependencies: [], path: "Sources"),
        .testTarget(name: "CombineExtTests", dependencies: ["CombineExt", "CombineSchedulers"], path: "Tests"),
    ],
    swiftLanguageVersions: [.v5]
)
