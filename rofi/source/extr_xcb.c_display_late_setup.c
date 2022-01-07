
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ find_arg (char*) ;
 int g_timeout_add (int,int ,int *) ;
 int g_warning (char*,int) ;
 int lazy_grab_keyboard ;
 int lazy_grab_pointer ;
 int take_keyboard (int ,int) ;
 int take_pointer (int ,int) ;
 int x11_create_visual_and_colormap () ;
 int xcb_stuff_get_root_window () ;

gboolean display_late_setup ( void )
{
    x11_create_visual_and_colormap ();







    if ( find_arg ( "-normal-window" ) >= 0 ) {
        return TRUE;
    }
    if ( find_arg ( "-no-lazy-grab" ) >= 0 ) {
        if ( !take_keyboard ( xcb_stuff_get_root_window (), 500 ) ) {
            g_warning ( "Failed to grab keyboard, even after %d uS.", 500 * 1000 );
            return FALSE;
        }
        if ( !take_pointer ( xcb_stuff_get_root_window (), 100 ) ) {
            g_warning ( "Failed to grab mouse pointer, even after %d uS.", 100 * 1000 );
        }
    }
    else {
        if ( !take_keyboard ( xcb_stuff_get_root_window (), 0 ) ) {
            g_timeout_add ( 1, lazy_grab_keyboard, ((void*)0) );
        }
        if ( !take_pointer ( xcb_stuff_get_root_window (), 0 ) ) {
            g_timeout_add ( 1, lazy_grab_pointer, ((void*)0) );
        }
    }
    return TRUE;
}
