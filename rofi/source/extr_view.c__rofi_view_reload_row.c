
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_lines; int list_view; void* distance; void* line_map; int sw; } ;
typedef TYPE_1__ RofiViewState ;


 int g_free (void*) ;
 void* g_malloc0_n (int ,int) ;
 int listview_set_max_lines (int ,int ) ;
 int mode_get_num_entries (int ) ;
 int rofi_view_reload_message_bar (TYPE_1__*) ;

__attribute__((used)) static void _rofi_view_reload_row ( RofiViewState *state )
{
    g_free ( state->line_map );
    g_free ( state->distance );
    state->num_lines = mode_get_num_entries ( state->sw );
    state->line_map = g_malloc0_n ( state->num_lines, sizeof ( unsigned int ) );
    state->distance = g_malloc0_n ( state->num_lines, sizeof ( int ) );
    listview_set_max_lines ( state->list_view, state->num_lines );
    rofi_view_reload_message_bar ( state );
}
