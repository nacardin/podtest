// swift-tools-version:5.5.0
import PackageDescription
let package = Package(
	name: "FluvioClientSwift",
	products: [
		.library(
			name: "FluvioClientSwift",
			targets: ["FluvioClientSwift"]),
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name: "RustXcframework",
			path: "RustXcframework.xcframework"
		),
		.target(
			name: "FluvioClientSwift",
			dependencies: ["RustXcframework"])
	]
)
	