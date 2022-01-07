
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size {int width; int height; } ;
typedef int SDL_Window ;


 int SDL_GetWindowSize (int *,int*,int*) ;

__attribute__((used)) static struct size
get_native_window_size(SDL_Window *window) {
    int width;
    int height;
    SDL_GetWindowSize(window, &width, &height);

    struct size size;
    size.width = width;
    size.height = height;
    return size;
}
