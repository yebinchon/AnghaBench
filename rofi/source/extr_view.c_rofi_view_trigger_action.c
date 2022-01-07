
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int widget ;
typedef int guint ;
typedef int gint ;
typedef int gboolean ;
struct TYPE_4__ {int * motion_target; int y; int x; } ;
struct TYPE_5__ {TYPE_1__ mouse; int main_window; } ;
typedef TYPE_2__ RofiViewState ;
typedef int BindingsScope ;


 int FALSE ;






 int TRUE ;
 int WIDGET (int ) ;




 int rofi_view_trigger_global_action (int ) ;
 int * widget_find_mouse_target (int ,int,int ,int ) ;
 int widget_trigger_action (int *,int ,int ,int ) ;
 int widget_xy_to_relative (int *,int *,int *) ;

gboolean rofi_view_trigger_action ( RofiViewState *state, BindingsScope scope, guint action )
{
    switch ( scope )
    {
    case 137:
        rofi_view_trigger_global_action ( action );
        return TRUE;
    case 135:
    case 134:
    case 136:
    case 132:
    case 133:
    {
        gint x = state->mouse.x, y = state->mouse.y;
        widget *target = widget_find_mouse_target ( WIDGET ( state->main_window ), scope, x, y );
        if ( target == ((void*)0) ) {
            return FALSE;
        }
        widget_xy_to_relative ( target, &x, &y );
        switch ( widget_trigger_action ( target, action, x, y ) )
        {
        case 128:
            return FALSE;
        case 130:
            target = ((void*)0);

        case 131:
            state->mouse.motion_target = target;

        case 129:
            return TRUE;
        }
        break;
    }
    }
    return FALSE;
}
