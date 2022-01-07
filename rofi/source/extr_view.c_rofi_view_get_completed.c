
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int quit; } ;
typedef TYPE_1__ RofiViewState ;



unsigned int rofi_view_get_completed ( const RofiViewState *state )
{
    return state->quit;
}
