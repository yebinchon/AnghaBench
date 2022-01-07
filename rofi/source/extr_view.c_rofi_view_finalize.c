
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* finalize ) (TYPE_1__*) ;} ;
typedef TYPE_1__ RofiViewState ;


 int stub1 (TYPE_1__*) ;

void rofi_view_finalize ( RofiViewState *state )
{
    if ( state && state->finalize != ((void*)0) ) {
        state->finalize ( state );
    }
}
