
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LOGC (char*,int ) ;
 int LOGW (char*) ;
 int SDL_EnableScreenSaver () ;
 int SDL_GetError () ;
 int SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH ;
 int SDL_HINT_RENDER_SCALE_QUALITY ;
 int SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS ;
 int SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR ;
 int SDL_INIT_EVENTS ;
 int SDL_INIT_VIDEO ;
 scalar_t__ SDL_Init (int ) ;
 int SDL_Quit ;
 int SDL_SetHint (int ,char*) ;
 int atexit (int ) ;

__attribute__((used)) static bool
sdl_init_and_configure(bool display) {
    uint32_t flags = display ? SDL_INIT_VIDEO : SDL_INIT_EVENTS;
    if (SDL_Init(flags)) {
        LOGC("Could not initialize SDL: %s", SDL_GetError());
        return 0;
    }

    atexit(SDL_Quit);

    if (!display) {
        return 1;
    }


    if (!SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "2")) {
        LOGW("Could not enable bilinear filtering");
    }
    if (!SDL_SetHint(SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS, "0")) {
        LOGW("Could not disable minimize on focus loss");
    }


    SDL_EnableScreenSaver();

    return 1;
}
