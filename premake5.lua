project "box2d"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("build/%{prj.name}")
	objdir ("build/%{prj.name}")

    files {
        "src/**.h",
        "src/**.cpp",

        "include/**.h"
    }

    includedirs {
		"include",
		"src"
	}

    filter "configurations:debug"
		symbols "on"

	filter "configurations:release"
		optimize "on"