# Portfolio Monorepo

Welcome to the **Portfolio** project monorepo. This repository houses all personal projects, libraries, and applications.

## Repositories

This monorepo contains the following repositories as git submodules:

### Core Libraries (PLC Design System)

- **[plc](./plc/)** - PLC design system monorepo containing:
  - **[plc-core](./plc/plc-core/)** - Core React component library with glassmorphism styling (Rslib)
  - **[plc-core-types](./plc/plc-core-types/)** - TypeScript type definitions for plc-core
  - **[plc-ui](./plc/plc-ui/)** - Desktop UI library for window management (Rslib)
  - **[plc-ui-types](./plc/plc-ui-types/)** - TypeScript type definitions for plc-ui
  - **[plc-docs](./plc/plc-docs/)** - Documentation website (Rsbuild App)
  - **[plc-playground](./plc/plc-playground/)** - Component playground (Rsbuild App)

### Applications

- **[phonebooth](./phonebooth/)** - VoIP calling application (React + Express)
- **[tradebot](./tradebot/)** - CFD trading bot for IG Markets (React + Express)
- **[pokedex](./pokedex/)** - Pokémon database application (React + Rsbuild)

### Planned / In Development

- **[messenger](./messenger/)** - Modern messaging application (Planned)
- **[ide](./ide/)** - Web-based integrated development environment (Planned)
- **[daw](./daw/)** - Digital audio workstation (Planned)
- **[MinecraftMod](./MinecraftMod/)** - Minecraft modding project (Planned)
- **[UnityGame](./UnityGame/)** - Unity game development project (Planned)

### Hardware Projects

- **[RobotArm](./RobotArm/)** - Robotic arm with precise control capabilities
- **[SuperHumanRobot](./SuperHumanRobot/)** - Advanced humanoid robot with AI capabilities
- **[VRHeadset](./VRHeadset/)** - Virtual reality headset project

### Other Repositories

- **[dockclon](./dockclon/)** - Docker clone project
- **[enginsoft](./enginsoft/)** - Engineering software project
- **[gitclone](./gitclone/)** - Git clone implementation

## Setup

1. **Clone the repository:**

   ```bash
   git clone --recurse-submodules https://github.com/marius-patrik/portfolio.git
   cd portfolio
   ```

   Or if already cloned:

   ```bash
   git clone https://github.com/marius-patrik/portfolio.git
   cd portfolio
   git submodule update --init --recursive
   ```

2. **Install dependencies:**

   Run the installation script to install all dependencies:

   ```bash
   ./.scripts/install_all.sh
   ```

   Or manually install for specific projects:

   ```bash
   # PLC Libraries
   cd plc/plc-core-types && npm install && cd ../..
   cd plc/plc-core && npm install && cd ../..
   cd plc/plc-ui-types && npm install && cd ../..
   cd plc/plc-ui && npm install && cd ../..
   cd plc/plc-docs && npm install && cd ../..
   cd plc/plc-playground && npm install && cd ../..

   # Applications
   cd phonebooth/client && npm install && cd ../..
   cd phonebooth/server && npm install && cd ../..
   cd tradebot && npm install && cd ..
   cd pokedex && npm install && cd ..
   ```

## Development

Each submodule is independent. Navigate to any project directory and run `npm run dev` to start the development server.

Example:
```bash
cd plc/plc-playground
npm run dev
```

## Scripts

| Script                          | Description                                      |
| ------------------------------- | ------------------------------------------------ |
| `./.scripts/install_all.sh`     | Install dependencies and build all libraries     |
| `./.scripts/build_all.sh`       | Build all projects (libraries and applications)  |
| `./.scripts/lint_all.sh`        | Lint all submodules                              |
| `./.scripts/push_all.sh`        | Push all submodules and root repo to origin/main |
| `./.scripts/force_push_all.sh`  | Stage, commit, and force push all repos (with confirmation) |
| `./.scripts/squash_all.sh`      | Squash all history and force push (destructive)  |

## Project Structure

```
portfolio/
├── plc/                    # PLC design system monorepo
│   ├── plc-core/           # Core component library
│   ├── plc-core-types/     # Type definitions for plc-core
│   ├── plc-ui/             # Desktop UI library
│   ├── plc-ui-types/       # Type definitions for plc-ui
│   ├── plc-docs/           # Documentation website
│   └── plc-playground/     # Component playground
├── phonebooth/             # VoIP application
├── tradebot/               # Trading bot
├── pokedex/                # Pokémon database
├── messenger/              # Messaging app (planned)
├── ide/                    # IDE project (planned)
├── daw/                    # DAW project (planned)
├── MinecraftMod/           # Minecraft mod (planned)
├── UnityGame/              # Unity game (planned)
├── RobotArm/               # Robot arm hardware project
├── SuperHumanRobot/        # Humanoid robot project
├── VRHeadset/              # VR headset project
├── dockclon/               # Docker clone
├── enginsoft/              # Engineering software
└── gitclone/               # Git clone implementation
```

## License

MIT
