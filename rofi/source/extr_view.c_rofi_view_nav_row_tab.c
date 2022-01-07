
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filtered_lines; int quit; scalar_t__ prev_action; int list_view; scalar_t__ selected_line; int retv; scalar_t__* line_map; } ;
typedef TYPE_1__ RofiViewState ;


 int MENU_NEXT ;
 int MENU_OK ;
 scalar_t__ ROW_TAB ;
 int TRUE ;
 size_t listview_get_selected (int ) ;
 int listview_nav_down (int ) ;

__attribute__((used)) static void rofi_view_nav_row_tab ( RofiViewState *state )
{
    if ( state->filtered_lines == 1 ) {
        state->retv = MENU_OK;
        ( state->selected_line ) = state->line_map[listview_get_selected ( state->list_view )];
        state->quit = 1;
        return;
    }


    if ( state->filtered_lines == 0 && ROW_TAB == state->prev_action ) {
        state->retv = MENU_NEXT;
        ( state->selected_line ) = 0;
        state->quit = TRUE;
    }
    else {
        listview_nav_down ( state->list_view );
    }
    state->prev_action = ROW_TAB;
}
