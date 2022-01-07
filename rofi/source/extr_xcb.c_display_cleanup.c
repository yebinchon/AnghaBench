
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ screen_nbr; int * screen; int * connection; int * source; int ewmh; int * sndisplay; int * sncontext; int bindings_seat; } ;


 int g_debug (char*) ;
 int g_water_xcb_source_free (int *) ;
 int nk_bindings_seat_free (int ) ;
 int sn_display_unref (int *) ;
 int sn_launchee_context_unref (int *) ;
 int x11_monitors_free () ;
 TYPE_1__* xcb ;
 int xcb_aux_sync (int *) ;
 int xcb_ewmh_connection_wipe (int *) ;
 int xcb_flush (int *) ;

void display_cleanup ( void )
{
    if ( xcb->connection == ((void*)0) ) {
        return;
    }

    g_debug ( "Cleaning up XCB and XKB" );

    nk_bindings_seat_free ( xcb->bindings_seat );
    if ( xcb->sncontext != ((void*)0) ) {
        sn_launchee_context_unref ( xcb->sncontext );
        xcb->sncontext = ((void*)0);
    }
    if ( xcb->sndisplay != ((void*)0) ) {
        sn_display_unref ( xcb->sndisplay );
        xcb->sndisplay = ((void*)0);
    }
    x11_monitors_free ();
    xcb_ewmh_connection_wipe ( &( xcb->ewmh ) );
    xcb_flush ( xcb->connection );
    xcb_aux_sync ( xcb->connection );
    g_water_xcb_source_free ( xcb->source );
    xcb->source = ((void*)0);
    xcb->connection = ((void*)0);
    xcb->screen = ((void*)0);
    xcb->screen_nbr = 0;
}
