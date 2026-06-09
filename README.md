# mpv Config

A personal mpv media player configuration with Anime4K shaders, interactive 360° video support, and a curated set of Lua scripts.

I did not make any of these scripts. All credit goes to the script makers.

## Structure

```
mpv/
├── mpv.conf              # Core player settings
├── input.conf            # Keybindings
├── scripts/              # Lua scripts
├── shaders/              # Anime4K & 360° GLSL shaders
├── script-opts/          # Per-script configuration files
├── fonts/                # OSD and subtitle fonts
└── watch_later/          # Resume position data
```

## Features

- **Anime4K shaders** — GPU-accelerated upscaling and line enhancement for anime content
- **360° video support** — Interactive spherical video viewer with mouse/keyboard camera control, auto-triggered on filenames containing "360"
- **Subtitle handling** — Fuzzy external subtitle matching, embedded font support, custom styling
- **Persistent volume** — Volume level saved and restored across sessions
- **Auto-playlist** — Automatically loads adjacent files in the same directory
- **YouTube integration** — Stream quality selector and yt-dlp download support
- **Image Viewer** — This setup also acts as a simple image viewer.

## Scripts

| Script | Description |
|---|---|
| `auto-360.lua` | Auto-triggers 360° mode when "360" is in the filename |
| `autoload.lua` | Automatically populates the playlist from the current directory |
| `autoloop.lua` | Loops short clips (≤5s) automatically |
| `betterchapters.lua` | Falls back to playlist prev/next when no chapters remain |
| `copyTime.lua` | Copies current timestamp to clipboard |
| `createchapter.lua` | Creates a chapter marker at the current position |
| `lrc.lua` | Fetches and displays synced lyrics for music files |
| `mpv360.lua` | Interactive 360° video viewer with full projection support |
| `persist-properties.lua` | Persists properties (e.g. volume) across sessions |
| `reload.lua` | Auto-reloads stalled online streams; manual reload via `Ctrl+R` |
| `slicing.lua` | Cuts/exports video segments using ffmpeg |
| `SmartCopyPaste.lua` | Paste URLs or file paths directly into mpv |
| `youtube-download.lua` | Download video/audio via yt-dlp |
| `youtube-quality-osc.lua` | On-screen quality selector for YouTube streams |

## Controls

### Shaders

| Key | Action |
|---|---|
| `Alt+1` | Anime4K: Dark Lines + Thin Lines (HQ) |
| `Alt+2` | Anime4K: Upscale Original x2 |
| `Alt+3` | Anime4K: Upscale CNN x2 UL + Thin Lines |

### 360° Video

| Key | Action |
|---|---|
| `Ctrl+e` | Toggle 360° view on a video |
|`Ctrl+MBTN_LEFT` | Toggle / untoggle mouse look|
| `k` | Cycle 360° projection formats (EAC → Equirect → Dual Fisheye → Half-Equirect → Cylindrical) |

### Pan & Scan

| Key | Action |
|---|---|
| `Ctrl++` | Increase zoom |
| `Ctrl+-` | Decrease zoom |
| `Ctrl+Right` | Pan left |
| `Ctrl+Left` | Pan right |
| `Ctrl+Down` | Pan up |
| `Ctrl+Up` | Pan down |
| `w` | Decrease height (panscan) |
| `W` | Increase height (panscan) |
| `o` | Reset zoom and pan |

### Navigation

| Key | Action |
|---|---|
| `Right` | Seek +5 seconds |
| `Left` | Seek −5 seconds |
| `.` | Step forward one frame |
| `,` | Step backward one frame |
| `Ctrl+S` | Next chapter |
| `PgDn` | Previous chapter |
| `N` / `>` | Next file in playlist |
| `P` / `<` | Previous file in playlist |
| `Home` | First file in playlist |
| `End` | Last file in playlist |
| `p` | Show playlist |

### Volume

| Key | Action |
|---|---|
| `0` | Volume +5 |
| `9` | Volume −5 |
| `)` | Volume +1 (fine control) |
| `(` | Volume −1 (fine control) |
| `Scroll Up` | Volume +1 |
| `Scroll Down` | Volume −1 |

### YouTube

| Key | Action |
|---|---|
| `Ctrl+D` | Download current video |
| `Ctrl+A` | Download audio only |

### Screenshots
| Key | Action |
|---|---|
| `s` | Take screenshot |
| `S` | Take screenshot without subtitles |

## Installation

Copy the contents of this repo to your mpv config directory:

- **Linux/macOS:** `~/.config/mpv/`
- **Windows:** `%APPDATA%/mpv/`

> **Note:** The screenshot directory in `mpv.conf` is set to a Windows path. Update `screenshot-directory` to match your system before use.

## Dependencies

- [mpv](https://mpv.io/) (recent stable build)
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) — for YouTube streaming and downloads
- [ffmpeg](https://ffmpeg.org/) — for audio downloads and video slicing
