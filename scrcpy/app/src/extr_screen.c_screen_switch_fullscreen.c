
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int height; int width; } ;
struct screen {int fullscreen; TYPE_1__ windowed_window_size; int window; } ;


 int LOGD (char*,char*) ;
 int LOGW (char*,int ) ;
 int SDL_GetError () ;
 scalar_t__ SDL_SetWindowFullscreen (int ,int ) ;
 int SDL_SetWindowSize (int ,int ,int ) ;
 int SDL_WINDOW_FULLSCREEN_DESKTOP ;
 TYPE_1__ get_native_window_size (int ) ;
 int screen_render (struct screen*) ;

void
screen_switch_fullscreen(struct screen *screen) {
    if (!screen->fullscreen) {

        screen->windowed_window_size = get_native_window_size(screen->window);
    }
    uint32_t new_mode = screen->fullscreen ? 0 : SDL_WINDOW_FULLSCREEN_DESKTOP;
    if (SDL_SetWindowFullscreen(screen->window, new_mode)) {
        LOGW("Could not switch fullscreen mode: %s", SDL_GetError());
        return;
    }

    screen->fullscreen = !screen->fullscreen;
    if (!screen->fullscreen) {

        SDL_SetWindowSize(screen->window, screen->windowed_window_size.width,
                          screen->windowed_window_size.height);
    }

    LOGD("Switched to %s mode", screen->fullscreen ? "fullscreen" : "windowed");
    screen_render(screen);
}
