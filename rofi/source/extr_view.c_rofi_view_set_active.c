
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int views; } ;
typedef int RofiViewState ;


 TYPE_1__ CacheState ;
 int * current_active_menu ;
 int g_assert (int) ;
 int g_debug (char*) ;
 int g_queue_is_empty (int *) ;
 int * g_queue_pop_head (int *) ;
 int g_queue_push_head (int *,int *) ;
 int rofi_view_queue_redraw () ;
 int rofi_view_window_update_size (int *) ;

void rofi_view_set_active ( RofiViewState *state )
{
    if ( current_active_menu != ((void*)0) && state != ((void*)0) ) {
        g_queue_push_head ( &( CacheState.views ), current_active_menu );

        current_active_menu = state;
        g_debug ( "stack view." );
        rofi_view_window_update_size ( current_active_menu );
        rofi_view_queue_redraw ();
        return;
    }
    else if ( state == ((void*)0) && !g_queue_is_empty ( &( CacheState.views ) ) ) {
        g_debug ( "pop view." );
        current_active_menu = g_queue_pop_head ( &( CacheState.views ) );
        rofi_view_window_update_size ( current_active_menu );
        rofi_view_queue_redraw ();
        return;
    }
    g_assert ( ( current_active_menu == ((void*)0) && state != ((void*)0) ) || ( current_active_menu != ((void*)0) && state == ((void*)0) ) );
    current_active_menu = state;
    rofi_view_queue_redraw ();
}
