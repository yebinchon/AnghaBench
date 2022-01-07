
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* gint ;
struct TYPE_4__ {int * motion_target; void* y; void* x; } ;
struct TYPE_5__ {TYPE_1__ mouse; } ;
typedef TYPE_2__ RofiViewState ;


 int widget_motion_notify (int *,void*,void*) ;
 int widget_xy_to_relative (int *,void**,void**) ;

void rofi_view_handle_mouse_motion ( RofiViewState *state, gint x, gint y )
{
    state->mouse.x = x;
    state->mouse.y = y;
    if ( state->mouse.motion_target != ((void*)0) ) {
        widget_xy_to_relative ( state->mouse.motion_target, &x, &y );
        widget_motion_notify ( state->mouse.motion_target, x, y );
    }
}
