
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct size {void* height; void* width; } ;
struct TYPE_3__ {scalar_t__ h; scalar_t__ w; } ;
typedef TYPE_1__ SDL_Rect ;


 scalar_t__ DISPLAY_MARGINS ;
 scalar_t__ GET_DISPLAY_BOUNDS (int ,TYPE_1__*) ;
 int LOGW (char*,int ) ;
 void* MAX (int ,scalar_t__) ;
 int SDL_GetError () ;

__attribute__((used)) static bool
get_preferred_display_bounds(struct size *bounds) {
    SDL_Rect rect;





    if (SDL_GetDisplayBounds((0), (&rect))) {
        LOGW("Could not get display usable bounds: %s", SDL_GetError());
        return 0;
    }

    bounds->width = MAX(0, rect.w - DISPLAY_MARGINS);
    bounds->height = MAX(0, rect.h - DISPLAY_MARGINS);
    return 1;
}
