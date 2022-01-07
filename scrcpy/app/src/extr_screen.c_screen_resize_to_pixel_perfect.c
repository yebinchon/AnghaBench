
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; } ;
struct screen {TYPE_1__ frame_size; int window; int fullscreen; } ;


 int LOGD (char*) ;
 int SDL_SetWindowSize (int ,int ,int ) ;

void
screen_resize_to_pixel_perfect(struct screen *screen) {
    if (!screen->fullscreen) {
        SDL_SetWindowSize(screen->window, screen->frame_size.width,
                          screen->frame_size.height);
        LOGD("Resized to pixel-perfect");
    }
}
