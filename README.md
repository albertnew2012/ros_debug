# Talk Listen Package

## Overview

The `talk_listen` package is a simple ROS 2 project designed to demonstrate how to debug a ROS 2 project within Visual Studio Code. The package includes two nodes: `talker` and `listener`. The `talker` node publishes messages, while the `listener` node subscribes to those messages and processes them.

## Requirements

- ROS 2 (Foxy Humble Hawksbill)
- GCC (GNU Compiler Collection)
- CMake
- Visual Studio Code
- VS Code Extensions: C/C++, ROS, CMake Tools

## Package Contents

- **talker.cpp**: Source file for the `talker` node.
- **listener.cpp**: Source file for the `listener` node.
- **package.xml**: Package configuration file.
- **CMakeLists.txt**: CMake build configuration file.
- **c_cpp_properties.json**: VS Code C++ properties configuration.
- **tasks.json**: VS Code tasks configuration for building the package.
- **launch.json**: VS Code launch configuration for debugging.
- **settings.json**: VS Code settings configuration.

## Building the Package

To build the package, use the pre-configured task in Visual Studio Code. The `launch.json` file specifies `"preLaunchTask": "build talk_listen"` to ensure the package is built before launching the nodes.

### Steps to Build the Package

1. **Open the Run and Debug Sidebar**: Click on the "Run and Debug" icon on the left sidebar in VS Code.
2. **Run the Debug Configuration**: Choose either `Debug Talker` or `Debug Listener` from the dropdown menu and click the play button. This will automatically build the package using the `build talk_listen` task defined in `tasks.json`.

Alternatively, you can build the package using the terminal:

```bash
# Navigate to the workspace directory
cd /path/to/your/workspace

# Build the package using colcon
colcon build --packages-select talk_listen
