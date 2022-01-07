
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size {int height; int width; } ;
struct screen {int window; struct size windowed_window_size; scalar_t__ fullscreen; } ;


 int SDL_SetWindowSize (int ,int ,int ) ;

__attribute__((used)) static void
set_window_size(struct screen *screen, struct size new_size) {


    if (screen->fullscreen) {

        screen->windowed_window_size = new_size;
    } else {
        SDL_SetWindowSize(screen->window, new_size.width, new_size.height);
    }
}
