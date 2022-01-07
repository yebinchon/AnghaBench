
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct index {char c; int color; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ SDL_Surface ;


 int LOGE (char*) ;
 TYPE_1__* SDL_CreateRGBSurfaceFrom (int*,int,int,int,int,int,int,int,int) ;
 int SDL_PREALLOC ;
 int SDL_assert (int) ;
 int* SDL_malloc (int) ;
 int find_color (struct index*,int,char,int*) ;
 int strcmp (char*,char const*) ;
 int strtol (char const*,char**,int) ;

SDL_Surface *
read_xpm(char *xpm[]) {





    char *endptr;



    int width = strtol(xpm[0], &endptr, 10);
    int height = strtol(endptr + 1, &endptr, 10);
    int colors = strtol(endptr + 1, &endptr, 10);
    int chars = strtol(endptr + 1, &endptr, 10);


    SDL_assert(0 <= width && width < 256);
    SDL_assert(0 <= height && height < 256);
    SDL_assert(0 <= colors && colors < 256);
    SDL_assert(chars == 1);


    struct index index[colors];
    for (int i = 0; i < colors; ++i) {
        const char *line = xpm[1+i];
        index[i].c = line[0];
        SDL_assert(line[1] == '\t');
        SDL_assert(line[2] == 'c');
        SDL_assert(line[3] == ' ');
        if (line[4] == '#') {
            index[i].color = 0xff000000 | strtol(&line[5], &endptr, 0x10);
            SDL_assert(*endptr == '\0');
        } else {
            SDL_assert(!strcmp("None", &line[4]));
            index[i].color = 0;
        }
    }


    uint32_t *pixels = SDL_malloc(4 * width * height);
    if (!pixels) {
        LOGE("Could not allocate icon memory");
        return ((void*)0);
    }
    for (int y = 0; y < height; ++y) {
        const char *line = xpm[1 + colors + y];
        for (int x = 0; x < width; ++x) {
            char c = line[x];
            uint32_t color;
            bool color_found = find_color(index, colors, c, &color);
            SDL_assert(color_found);
            pixels[y * width + x] = color;
        }
    }


    uint32_t amask = 0x000000ff;
    uint32_t rmask = 0x0000ff00;
    uint32_t gmask = 0x00ff0000;
    uint32_t bmask = 0xff000000;







    SDL_Surface *surface = SDL_CreateRGBSurfaceFrom(pixels,
                                                    width, height,
                                                    32, 4 * width,
                                                    rmask, gmask, bmask, amask);
    if (!surface) {
        LOGE("Could not create icon surface");
        return ((void*)0);
    }

    surface->flags &= ~SDL_PREALLOC;
    return surface;
}
