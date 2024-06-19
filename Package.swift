// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomFrameworkPackage",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CustomFramework",
            targets: ["CustomFramework"]),
    ],
    dependencies: [
        .package(url: "https://github.com/leif-ibsen/BigInt", from: "1.18.0"),
        .package(url: "https://github.com/krzyzanowskim/OpenSSL-Package.git", from: "3.1.5004")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
//        .target(
//            name: "CustomFrameworkPackage"),
//        .testTarget(
//            name: "CustomFrameworkPackageTests",
//            dependencies: ["CustomFrameworkPackage"]),
        .binaryTarget(
            name: "CustomFramework",
            path: "./Sources/CustomFramework.xcframework")
    ]
    
)
