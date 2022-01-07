
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int listview ;
typedef scalar_t__ gboolean ;
struct TYPE_2__ {void* skip_absorb; void* quit; int * line_map; int selected_line; int retv; } ;
typedef TYPE_1__ RofiViewState ;


 int MENU_CUSTOM_ACTION ;
 int MENU_OK ;
 void* TRUE ;
 size_t listview_get_selected (int *) ;

__attribute__((used)) static void rofi_view_listview_mouse_activated_cb ( listview *lv, gboolean custom, void *udata )
{
    RofiViewState *state = (RofiViewState *) udata;
    state->retv = MENU_OK;
    if ( custom ) {
        state->retv |= MENU_CUSTOM_ACTION;
    }
    ( state->selected_line ) = state->line_map[listview_get_selected ( lv )];

    state->quit = TRUE;
    state->skip_absorb = TRUE;
}
