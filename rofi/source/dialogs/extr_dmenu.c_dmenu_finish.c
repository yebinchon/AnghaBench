
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RofiViewState ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FALSE ;
 int dmenu_mode ;
 int mode_destroy (int *) ;
 int rofi_set_return_code (int) ;
 int rofi_view_free (int *) ;
 int rofi_view_set_active (int *) ;

__attribute__((used)) static void dmenu_finish ( RofiViewState *state, int retv )
{
    if ( retv == FALSE ) {
        rofi_set_return_code ( EXIT_FAILURE );
    }
    else if ( retv >= 10 ) {
        rofi_set_return_code ( retv );
    }
    else{
        rofi_set_return_code ( EXIT_SUCCESS );
    }
    rofi_view_set_active ( ((void*)0) );
    rofi_view_free ( state );
    mode_destroy ( &dmenu_mode );
}
