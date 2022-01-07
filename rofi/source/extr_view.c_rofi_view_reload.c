
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idle_timeout; } ;


 TYPE_1__ CacheState ;
 scalar_t__ g_timeout_add (int,int ,int *) ;
 int rofi_view_reload_idle ;

void rofi_view_reload ( void )
{

    if ( CacheState.idle_timeout == 0 ) {
        CacheState.idle_timeout = g_timeout_add ( 1000 / 10, rofi_view_reload_idle, ((void*)0) );
    }
}
