// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Flipper",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "Flipper",
            targets: ["Flipper"]
        ),
    ],
    targets: [
        .target(
            name: "Flipper",
            dependencies: [],
            path: "xplat/Flipper",
            publicHeadersPath: "xplat/**/*.h",
            cxxSettings: [
                .unsafeFlags([
                    "-DFLIPPER_OSS=1",
                    "-DFB_SONARKIT_ENABLED=1",
                    "-DFOLLY_HAVE_BACKTRACE=1",
                    "-DFOLLY_HAVE_CLOCK_GETTIME=1",
                    "-DFOLLY_NO_CONFIG",
                    "-DFOLLY_MOBILE=1",
                    "-DFOLLY_USE_LIBCPP=1",
                    "-DFOLLY_HAVE_LIBGFLAGS=0",
                    "-DFOLLY_HAVE_LIBJEMALLOC=0",
                    "-DFOLLY_HAVE_PREADV=0",
                    "-DFOLLY_HAVE_PWRITEV=0",
                    "-DFOLLY_HAVE_TFO=0",
                    "-DFOLLY_USE_SYMBOLIZER=0",
                    "-Wall",
                    "-std=c++14",
                    "-Wno-global-constructors"
                ])
            ],
            swiftSettings: [
                .define("USE_HEADERMAP=NO"),
                .define("CLANG_CXX_LANGUAGE_STANDARD=c++14"),
                .define("HEADER_SEARCH_PATHS"),
                .unsafeFlags([
                    "-DFLIPPER_OSS=1",
                    "-DFB_SONARKIT_ENABLED=1",
                    "-DFOLLY_HAVE_BACKTRACE=1",
                    "-DFOLLY_HAVE_CLOCK_GETTIME=1",
                    "-DFOLLY_NO_CONFIG",
                    "-DFOLLY_MOBILE=1",
                    "-DFOLLY_USE_LIBCPP=1",
                    "-DFOLLY_HAVE_LIBGFLAGS=0",
                    "-DFOLLY_HAVE_LIBJEMALLOC=0",
                    "-DFOLLY_HAVE_PREADV=0",
                    "-DFOLLY_HAVE_PWRITEV=0",
                    "-DFOLLY_HAVE_TFO=0",
                    "-DFOLLY_USE_SYMBOLIZER=0",
                    "-Wall",
                    "-std=c++14",
                    "-Wno-global-constructors"
                ])
            ],
            linkerSettings: [
                .linkedLibrary("stdc++")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
