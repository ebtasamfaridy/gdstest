# gdstest

A 2D platformer built with **Godot 4.7**. Control a knight character, move across platforms, and jump — on both desktop and Android.

## Features

- 2D platformer movement with gravity and jump physics
- Knight character with idle animation
- Keyboard controls for PC
- On-screen touch controls for Android/mobile
- Android export preset included

## Controls

### Desktop

| Action | Keys |
|--------|------|
| Move left | `A` or `←` |
| Move right | `D` or `→` |
| Jump | `Space` or `Enter` |

### Android / Mobile

On-screen buttons appear automatically on mobile devices:

- **◀ / ▶** — hold to move left/right
- **Jump** — tap to jump

## Requirements

- [Godot 4.7](https://godotengine.org/download) or later

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/ebtasamfaridy/gdstest.git
   ```
2. Open the project in Godot (`project.godot`).
3. Press **F5** or click **Play** to run the game.

## Exporting for Android

1. Open **Project → Export** in Godot.
2. Select the **Android** preset.
3. Configure your Android SDK and signing keys if needed.
4. Export the APK.

## Project Structure

```
gdstest/
├── assets/
│   ├── fonts/       # PixelOperator8 fonts
│   ├── music/       # Background music
│   ├── sounds/      # Sound effects
│   └── sprites/     # Character and world sprites
├── scenes/
│   ├── game.tscn            # Main game scene
│   ├── player.tscn          # Player character
│   └── mobile_controls.tscn # Touch control overlay
├── scripts/
│   ├── player.gd            # Player movement logic
│   └── mobile_controls.gd   # Touch input handling
└── project.godot
```

## License

This project is for learning and personal use.
