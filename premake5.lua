project "ImFileDialog"
    kind "staticlib"
    language "C++"
    cppdialect "C++20"
    staticruntime "on"

    -- Only include specific files
    files {
        "./ImFileDialog.h",
        "./ImFileDialog.cpp",
    }

    includedirs {
        '../',
        '../stb'
    }

    -- Build Settings
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
        defines {
            "DEBUG"
        }

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
        defines {
            "RELEASE"
        }
