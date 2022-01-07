
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retv; } ;
typedef TYPE_1__ RofiViewState ;
typedef int MenuReturn ;



MenuReturn rofi_view_get_return_value ( const RofiViewState *state )
{
    return state->retv;
}
