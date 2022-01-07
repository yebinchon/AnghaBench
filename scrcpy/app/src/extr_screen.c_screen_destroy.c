
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen {scalar_t__ window; scalar_t__ renderer; scalar_t__ texture; } ;


 int SDL_DestroyRenderer (scalar_t__) ;
 int SDL_DestroyTexture (scalar_t__) ;
 int SDL_DestroyWindow (scalar_t__) ;

void
screen_destroy(struct screen *screen) {
    if (screen->texture) {
        SDL_DestroyTexture(screen->texture);
    }
    if (screen->renderer) {
        SDL_DestroyRenderer(screen->renderer);
    }
    if (screen->window) {
        SDL_DestroyWindow(screen->window);
    }
}
