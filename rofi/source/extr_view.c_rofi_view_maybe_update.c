
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ refilter; } ;
typedef TYPE_1__ RofiViewState ;


 int TRUE ;
 int rofi_quit_main_loop () ;
 int rofi_view_finalize (TYPE_1__*) ;
 TYPE_1__* rofi_view_get_active () ;
 scalar_t__ rofi_view_get_completed (TYPE_1__*) ;
 int rofi_view_refilter (TYPE_1__*) ;
 int rofi_view_update (TYPE_1__*,int ) ;

void rofi_view_maybe_update ( RofiViewState *state )
{
    if ( rofi_view_get_completed ( state ) ) {

        rofi_view_finalize ( state );

        state = rofi_view_get_active ();


        if ( state == ((void*)0) ) {

            rofi_quit_main_loop ();
            return;
        }
    }


    if ( state->refilter ) {
        rofi_view_refilter ( state );
    }
    rofi_view_update ( state, TRUE );
}
