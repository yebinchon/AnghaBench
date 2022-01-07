
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int filtered_lines; int refilter; int text; int * line_map; int sw; int * list_view; } ;
typedef TYPE_1__ RofiViewState ;


 int MOVE_END ;
 int TRUE ;
 int g_free (char*) ;
 unsigned int listview_get_selected (int *) ;
 char* mode_get_completion (int ,int ) ;
 int textbox_keybinding (int ,int ) ;
 int textbox_text (int ,char*) ;

__attribute__((used)) inline static void rofi_view_nav_row_select ( RofiViewState *state )
{
    if ( state->list_view == ((void*)0) ) {
        return;
    }
    unsigned int selected = listview_get_selected ( state->list_view );

    if ( selected < state->filtered_lines ) {
        char *str = mode_get_completion ( state->sw, state->line_map[selected] );
        textbox_text ( state->text, str );
        g_free ( str );
        textbox_keybinding ( state->text, MOVE_END );
        state->refilter = TRUE;
    }
}
