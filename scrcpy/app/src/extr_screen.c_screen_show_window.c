
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen {int window; } ;


 int SDL_ShowWindow (int ) ;

void
screen_show_window(struct screen *screen) {
    SDL_ShowWindow(screen->window);
}
