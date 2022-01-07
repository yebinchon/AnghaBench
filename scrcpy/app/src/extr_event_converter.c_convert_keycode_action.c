
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum android_keyevent_action { ____Placeholder_android_keyevent_action } android_keyevent_action ;
typedef int SDL_EventType ;


 int AKEY_EVENT_ACTION_DOWN ;
 int AKEY_EVENT_ACTION_UP ;
 int FAIL ;
 int MAP (int ,int ) ;
 int SDL_KEYDOWN ;
 int SDL_KEYUP ;

__attribute__((used)) static bool
convert_keycode_action(SDL_EventType from, enum android_keyevent_action *to) {
    switch (from) {
        MAP(SDL_KEYDOWN, AKEY_EVENT_ACTION_DOWN);
        MAP(SDL_KEYUP, AKEY_EVENT_ACTION_UP);
        FAIL;
    }
}
