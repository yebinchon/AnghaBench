
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int selected_line; } ;
typedef TYPE_1__ RofiViewState ;



unsigned int rofi_view_get_selected_line ( const RofiViewState *state )
{
    return state->selected_line;
}
