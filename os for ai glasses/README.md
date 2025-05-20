# AI Glasses Operating System

This is a Buildroot-based operating system configuration for AI-powered smart glasses. The project provides a customized Linux distribution with integrated AI capabilities including vision processing, speech recognition, and language models.

## Project Structure

```
├── board/
│   └── ai_glasses/          # Board-specific configurations and files
├── configs/
│   └── ai_glasses_defconfig # Default configuration for the AI glasses
├── package/
│   ├── whisper_cpp/        # Package for Whisper speech recognition
│   ├── llama_cpp/          # Package for LLaMA language model
│   └── vision_model/       # Package for computer vision models
├── rootfs_overlay/         # Custom root filesystem overlay
│   ├── etc/               # System configuration files
│   └── usr/bin/           # Custom executables
└── README.md
```

## Components

### Board Configuration
The `board/ai_glasses/` directory contains board-specific files and configurations necessary for the AI glasses hardware.

### Build Configuration
The `configs/ai_glasses_defconfig` file contains the default Buildroot configuration for building the AI glasses operating system.

### Custom Packages
- `whisper_cpp/`: Integration of Whisper.cpp for efficient speech recognition
- `llama_cpp/`: Integration of LLaMA.cpp for on-device language processing
- `vision_model/`: Computer vision models and processing pipeline

### Root Filesystem Overlay
The `rootfs_overlay/` directory contains additional files that will be overlaid onto the root filesystem:
- `etc/`: System configuration files
- `usr/bin/`: Custom executables and scripts

## Getting Started

1. Install Buildroot prerequisites
2. Clone this repository
3. Copy the defconfig: `cp configs/ai_glasses_defconfig .config`
4. Run `make`

## License

This project is open source and available under the MIT license.
