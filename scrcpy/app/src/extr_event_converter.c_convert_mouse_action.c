
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum android_motionevent_action { ____Placeholder_android_motionevent_action } android_motionevent_action ;
typedef int SDL_EventType ;


 int AMOTION_EVENT_ACTION_DOWN ;
 int AMOTION_EVENT_ACTION_UP ;
 int FAIL ;
 int MAP (int ,int ) ;
 int SDL_MOUSEBUTTONDOWN ;
 int SDL_MOUSEBUTTONUP ;

__attribute__((used)) static bool
convert_mouse_action(SDL_EventType from, enum android_motionevent_action *to) {
    switch (from) {
        MAP(SDL_MOUSEBUTTONDOWN, AMOTION_EVENT_ACTION_DOWN);
        MAP(SDL_MOUSEBUTTONUP, AMOTION_EVENT_ACTION_UP);
        FAIL;
    }
}
