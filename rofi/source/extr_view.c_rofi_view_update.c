
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
typedef int cairo_t ;
struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int edit_surf; TYPE_1__ mon; int * fake_bg; scalar_t__ fake_bgrel; int * edit_draw; } ;
struct TYPE_6__ {int main_window; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ RofiViewState ;


 int CAIRO_OPERATOR_OVER ;
 int CAIRO_OPERATOR_SOURCE ;
 TYPE_4__ CacheState ;
 int TICK () ;
 int TICK_N (char*) ;
 int WIDGET (int ) ;
 int cairo_paint (int *) ;
 int cairo_set_operator (int *,int ) ;
 int cairo_set_source_rgba (int *,int ,int ,int ,double) ;
 int cairo_set_source_surface (int *,int *,double,double) ;
 int cairo_surface_flush (int ) ;
 int g_debug (char*) ;
 int rofi_view_queue_redraw () ;
 int widget_draw (int ,int *) ;
 int widget_need_redraw (int ) ;

void rofi_view_update ( RofiViewState *state, gboolean qr )
{
    if ( !widget_need_redraw ( WIDGET ( state->main_window ) ) ) {
        return;
    }
    g_debug ( "Redraw view" );
    TICK ();
    cairo_t *d = CacheState.edit_draw;
    cairo_set_operator ( d, CAIRO_OPERATOR_SOURCE );
    if ( CacheState.fake_bg != ((void*)0) ) {
        if ( CacheState.fake_bgrel ) {
            cairo_set_source_surface ( d, CacheState.fake_bg, 0.0, 0.0 );
        }
        else {
            cairo_set_source_surface ( d, CacheState.fake_bg,
                                       -(double) ( state->x - CacheState.mon.x ),
                                       -(double) ( state->y - CacheState.mon.y ) );
        }
        cairo_paint ( d );
        cairo_set_operator ( d, CAIRO_OPERATOR_OVER );
    }
    else {

        cairo_set_source_rgba ( d, 0, 0, 0, 0.0 );
        cairo_paint ( d );
    }
    TICK_N ( "Background" );


    cairo_set_operator ( d, CAIRO_OPERATOR_OVER );
    widget_draw ( WIDGET ( state->main_window ), d );

    TICK_N ( "widgets" );
    cairo_surface_flush ( CacheState.edit_surf );
    if ( qr ) {
        rofi_view_queue_redraw ();
    }
}
