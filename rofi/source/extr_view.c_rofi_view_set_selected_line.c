
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int main_window; } ;
struct TYPE_6__ {int connection; } ;
struct TYPE_5__ {unsigned int selected_line; unsigned int filtered_lines; unsigned int* line_map; int list_view; } ;
typedef TYPE_1__ RofiViewState ;


 TYPE_4__ CacheState ;
 unsigned int UINT32_MAX ;
 int listview_set_selected (int ,unsigned int) ;
 TYPE_2__* xcb ;
 int xcb_clear_area (int ,int ,int,int ,int ,int,int) ;
 int xcb_flush (int ) ;

void rofi_view_set_selected_line ( RofiViewState *state, unsigned int selected_line )
{
    state->selected_line = selected_line;

    unsigned int selected = 0;
    for ( unsigned int i = 0; ( ( state->selected_line ) ) < UINT32_MAX && !selected && i < state->filtered_lines; i++ ) {
        if ( state->line_map[i] == ( state->selected_line ) ) {
            selected = i;
            break;
        }
    }
    listview_set_selected ( state->list_view, selected );
    xcb_clear_area ( xcb->connection, CacheState.main_window, 1, 0, 0, 1, 1 );
    xcb_flush ( xcb->connection );
}
