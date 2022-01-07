
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size {int height; int width; } ;
struct screen {int window; int frame_size; int fullscreen; } ;


 int LOGD (char*) ;
 int SDL_SetWindowSize (int ,int ,int ) ;
 struct size get_optimal_window_size (struct screen*,int ) ;

void
screen_resize_to_fit(struct screen *screen) {
    if (!screen->fullscreen) {
        struct size optimal_size = get_optimal_window_size(screen,
                                                           screen->frame_size);
        SDL_SetWindowSize(screen->window, optimal_size.width,
                          optimal_size.height);
        LOGD("Resized to optimal size");
    }
}
