# Copyright 2014 Patrick Dawson <pat@dw.is>
#
# This software is provided 'as-is', without any express or implied
# warranty.  In no event will the authors be held liable for any damages
# arising from the use of this software.
#
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it
# freely, subject to the following restrictions:
#
# 1. The origin of this software must not be misrepresented; you must not
#    claim that you wrote the original software. If you use this software
#    in a product, an acknowledgment in the product documentation would be
#    appreciated but is not required.
# 2. Altered source versions must be plainly marked as such, and must not be
#    misrepresented as being the original software.
# 3. This notice may not be removed or altered from any source distribution.

from sdl2 cimport *
from libc.stdlib cimport malloc, free
from libc.string cimport memcpy

from error import error

cdef class KeyboardState:
    # Allow weak references.
    cdef object __weakref__

    cdef uint8_t *data
    cdef int numkeys

    def __cinit__(self):
        self.data = NULL

    def __dealloc__(self):
        if self.data != NULL:
            free(self.data)

    def __init__(self):
        cdef uint8_t *state = SDL_GetKeyboardState(&self.numkeys)
        if state == NULL:
            raise error()

        # Take a snapshot of the current state, rather than saving the pointer.
        self.data = <uint8_t*>malloc(self.numkeys)
        memcpy(self.data, state, self.numkeys)

    def __getitem__(self, int key):
        if SDLK_DELETE < key < SDLK_CAPSLOCK:
            raise IndexError("Out of range.")

        cdef int sc = <int>SDL_GetScancodeFromKey(key)
        if sc > self.numkeys:
            raise IndexError("Out of range.")

        return self.data[sc]


def get_focused():
    return SDL_GetKeyboardFocus() != NULL

def get_pressed():
    """ No longer returns a tuple. Use the returned object to check for
        individual keys, but don't loop through it. """

    return KeyboardState()

def get_mods():
    return SDL_GetModState()

def set_mods(state):
    SDL_SetModState(state)

def set_repeat(delay=0, interval=0):
    # Not possible with SDL2.
    pass

def get_repeat():
    # Not possible with SDL2.
    return (0,0)

def name(key):
    return SDL_GetKeyName(key)
