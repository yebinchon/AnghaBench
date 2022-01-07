
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sw; } ;
typedef TYPE_1__ RofiViewState ;
typedef int Mode ;



Mode * rofi_view_get_mode ( RofiViewState *state )
{
    return state->sw;
}
