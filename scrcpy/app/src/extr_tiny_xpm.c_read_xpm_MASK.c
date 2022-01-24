#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct index {char c; int color; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ SDL_Surface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  SDL_PREALLOC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* FUNC3 (int) ; 
 int FUNC4 (struct index*,int,char,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*,char**,int) ; 

SDL_Surface *
FUNC7(char *xpm[]) {
#if SDL_ASSERT_LEVEL >= 2
    // patch the XPM to change the icon color in debug mode
    xpm[2] = ".	c #CC00CC";
#endif

    char *endptr;
    // *** No error handling, assume the XPM source is valid ***
    // (it's in our source repo)
    // Assertions are only checked in debug
    int width = FUNC6(xpm[0], &endptr, 10);
    int height = FUNC6(endptr + 1, &endptr, 10);
    int colors = FUNC6(endptr + 1, &endptr, 10);
    int chars = FUNC6(endptr + 1, &endptr, 10);

    // sanity checks
    FUNC2(0 <= width && width < 256);
    FUNC2(0 <= height && height < 256);
    FUNC2(0 <= colors && colors < 256);
    FUNC2(chars == 1); // this implementation does not support more

    // init index
    struct index index[colors];
    for (int i = 0; i < colors; ++i) {
        const char *line = xpm[1+i];
        index[i].c = line[0];
        FUNC2(line[1] == '\t');
        FUNC2(line[2] == 'c');
        FUNC2(line[3] == ' ');
        if (line[4] == '#') {
            index[i].color = 0xff000000 | FUNC6(&line[5], &endptr, 0x10);
            FUNC2(*endptr == '\0');
        } else {
            FUNC2(!FUNC5("None", &line[4]));
            index[i].color = 0;
        }
    }

    // parse image
    uint32_t *pixels = FUNC3(4 * width * height);
    if (!pixels) {
        FUNC0("Could not allocate icon memory");
        return NULL;
    }
    for (int y = 0; y < height; ++y) {
        const char *line = xpm[1 + colors + y];
        for (int x = 0; x < width; ++x) {
            char c = line[x];
            uint32_t color;
            bool color_found = FUNC4(index, colors, c, &color);
            FUNC2(color_found);
            pixels[y * width + x] = color;
        }
    }

#if SDL_BYTEORDER == SDL_BIG_ENDIAN
    uint32_t amask = 0x000000ff;
    uint32_t rmask = 0x0000ff00;
    uint32_t gmask = 0x00ff0000;
    uint32_t bmask = 0xff000000;
#else // little endian, like x86
    uint32_t amask = 0xff000000;
    uint32_t rmask = 0x00ff0000;
    uint32_t gmask = 0x0000ff00;
    uint32_t bmask = 0x000000ff;
#endif

    SDL_Surface *surface = FUNC1(pixels,
                                                    width, height,
                                                    32, 4 * width,
                                                    rmask, gmask, bmask, amask);
    if (!surface) {
        FUNC0("Could not create icon surface");
        return NULL;
    }
    // make the surface own the raw pixels
    surface->flags &= ~SDL_PREALLOC;
    return surface;
}