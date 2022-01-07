
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_result { ____Placeholder_event_result } event_result ;
typedef int SDL_Event ;





 int SDL_AddEventWatch (int ,int *) ;
 scalar_t__ SDL_WaitEvent (int *) ;
 int event_watcher ;
 int handle_event (int *,int) ;

__attribute__((used)) static bool
event_loop(bool display, bool control) {





    SDL_Event event;
    while (SDL_WaitEvent(&event)) {
        enum event_result result = handle_event(&event, control);
        switch (result) {
            case 128:
                return 1;
            case 129:
                return 0;
            case 130:
                break;
        }
    }
    return 0;
}
