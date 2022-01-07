
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ repaint_source; } ;


 TYPE_1__ CacheState ;
 int G_PRIORITY_HIGH_IDLE ;
 scalar_t__ g_idle_add_full (int ,int ,int *,int *) ;
 int rofi_view_repaint ;

void rofi_view_frame_callback ( void )
{
    if ( CacheState.repaint_source == 0 ) {
        CacheState.repaint_source = g_idle_add_full ( G_PRIORITY_HIGH_IDLE, rofi_view_repaint, ((void*)0), ((void*)0) );
    }
}
