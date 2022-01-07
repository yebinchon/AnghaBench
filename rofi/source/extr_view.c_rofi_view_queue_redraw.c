
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ repaint_source; int count; } ;


 TYPE_1__ CacheState ;
 int G_PRIORITY_HIGH_IDLE ;
 scalar_t__ current_active_menu ;
 int g_debug (char*,int ) ;
 scalar_t__ g_idle_add_full (int ,int ,int *,int *) ;
 int rofi_view_repaint ;

void rofi_view_queue_redraw ( void )
{
    if ( current_active_menu && CacheState.repaint_source == 0 ) {
        CacheState.count++;
        g_debug ( "redraw %llu", CacheState.count );
        CacheState.repaint_source = g_idle_add_full ( G_PRIORITY_HIGH_IDLE, rofi_view_repaint, ((void*)0), ((void*)0) );
    }
}
