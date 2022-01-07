
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xcb_window_t ;
struct TYPE_5__ {int flags; scalar_t__ main_window; } ;
struct TYPE_4__ {int retv; int quit; } ;
typedef TYPE_1__ RofiViewState ;


 TYPE_3__ CacheState ;
 int MENU_CANCEL ;
 int MENU_NORMAL_WINDOW ;
 int TRUE ;

void rofi_view_temp_click_to_exit ( RofiViewState *state, xcb_window_t target )
{
    if ( ( CacheState.flags & MENU_NORMAL_WINDOW ) == 0 ) {
        if ( target != CacheState.main_window ) {
            state->quit = TRUE;
            state->retv = MENU_CANCEL;
        }
    }
}
