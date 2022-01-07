
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen {int renderer; int texture; } ;


 int SDL_RenderClear (int ) ;
 int SDL_RenderCopy (int ,int ,int *,int *) ;
 int SDL_RenderPresent (int ) ;

void
screen_render(struct screen *screen) {
    SDL_RenderClear(screen->renderer);
    SDL_RenderCopy(screen->renderer, screen->texture, ((void*)0), ((void*)0));
    SDL_RenderPresent(screen->renderer);
}
