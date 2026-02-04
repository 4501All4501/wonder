# Wonder

Wonder is a Termux-first command toolkit designed to run inside proot-distro while working smoothly with NTFS-backed storage. It focuses on predictable account management, login workflows, and safe handling of DOS/NTFS partitions so your environment stays consistent across sessions.

## Highlights

- **Real account creation** with login/session support when running inside proot-distro.
- **Filesystem-aware tooling** tailored for NTFS and DOS partition layouts.
- **Termux-native experience** that respects the constraints and workflows of Android devices.

## Why Wonder

Wonder aims to make a proot-based Linux environment feel closer to a full system, especially when you rely on NTFS volumes and need repeatable login workflows for persistent storage.

## Status

Project details and usage documentation will expand as features are finalized.

## Building on Termux

Install dependencies, then choose one of the build paths below.

```sh
pkg install clang cmake make
```

### GCC

```sh
./scripts/build-termux-gcc.sh
```

The output binary is written to `./build/wonder` by default. Override with `BIN_DIR` or add flags
with `CFLAGS`, for example:

```sh
BIN_DIR=out CFLAGS="-O2 -g" ./scripts/build-termux-gcc.sh
```

### CMake

```sh
./scripts/build-termux-cmake.sh
```

The default build directory is `./build-cmake`. Override it with `BUILD_DIR` if needed:

```sh
BUILD_DIR=out-cmake ./scripts/build-termux-cmake.sh
```

### Run

```sh
./build/wonder
```
