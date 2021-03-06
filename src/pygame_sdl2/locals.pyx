from sdl2 cimport *
cimport sdl2

from rect import Rect
from color import Color

include "event_list.pxi"
ACTIVEEVENT = SDL_LASTEVENT - 1
VIDEORESIZE = SDL_LASTEVENT - 2
VIDEOEXPOSE = SDL_LASTEVENT - 3

include "keycode_list.pxi"

include "glattr.pxi"
GL_SWAP_CONTROL = -1

RLEACCEL = SDL_RLEACCEL
SRCCOLORKEY = 0

# Surface flags.
SRCALPHA  = 0x80000000
HWSURFACE = 0x40000000
SWSURFACE = 0

# Window flags.
FULLSCREEN = SDL_WINDOW_FULLSCREEN
OPENGL = SDL_WINDOW_OPENGL
NOFRAME = SDL_WINDOW_BORDERLESS
RESIZABLE = SDL_WINDOW_RESIZABLE
DOUBLEBUF = 0

WINDOW_FULLSCREEN = SDL_WINDOW_FULLSCREEN
WINDOW_SHOWN = SDL_WINDOW_SHOWN
WINDOW_HIDDEN = SDL_WINDOW_HIDDEN
WINDOW_OPENGL = SDL_WINDOW_OPENGL
WINDOW_NOFRAME = SDL_WINDOW_BORDERLESS
WINDOW_RESIZABLE = SDL_WINDOW_RESIZABLE
WINDOW_MINIMIZED = SDL_WINDOW_MINIMIZED
WINDOW_MAXIMIZED = SDL_WINDOW_MAXIMIZED
WINDOW_INPUT_GRABBED = SDL_WINDOW_INPUT_GRABBED
WINDOW_INPUT_FOCUS = SDL_WINDOW_MOUSE_FOCUS
WINDOW_FULLSCREEN_DESKTOP = SDL_WINDOW_FULLSCREEN_DESKTOP
WINDOW_FOREIGN = SDL_WINDOW_FOREIGN
WINDOW_ALLOW_HIGHDPI = SDL_WINDOW_ALLOW_HIGHDPI

# Scrap types.
SCRAP_TEXT = "text/plain"

BYTEORDER = SDL_BYTEORDER
LIL_ENDIAN = SDL_LIL_ENDIAN
BIG_ENDIAN = SDL_BIG_ENDIAN

SDL_VERSION_TUPLE = (SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL)

globals().update(dict(
    KMOD_NONE = sdl2.KMOD_NONE,

    KMOD_LSHIFT = sdl2.KMOD_LSHIFT,
    KMOD_RSHIFT = sdl2.KMOD_RSHIFT,
    KMOD_SHIFT = sdl2.KMOD_SHIFT,


    KMOD_LCTRL = sdl2.KMOD_LCTRL,
    KMOD_RCTRL = sdl2.KMOD_RCTRL,
    KMOD_CTRL = sdl2.KMOD_CTRL,

    KMOD_LALT = sdl2.KMOD_LALT,
    KMOD_RALT = sdl2.KMOD_RALT,
    KMOD_ALT = sdl2.KMOD_ALT,

    KMOD_LGUI = sdl2.KMOD_LGUI,
    KMOD_RGUI = sdl2.KMOD_RGUI,
    KMOD_GUI = sdl2.KMOD_GUI,

    KMOD_LMETA = sdl2.KMOD_LGUI,
    KMOD_RMETA = sdl2.KMOD_RGUI,
    KMOD_META = sdl2.KMOD_GUI,

    KMOD_NUM = sdl2.KMOD_NUM,
    KMOD_CAPS = sdl2.KMOD_CAPS,

    KMOD_MODE = sdl2.KMOD_MODE,
))
