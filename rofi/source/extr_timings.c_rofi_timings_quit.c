
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_debug (char*,double,double) ;
 int g_timer_destroy (int ) ;
 double g_timer_elapsed (int ,int *) ;
 int global_timer ;

void rofi_timings_quit ( void )
{
        double now = g_timer_elapsed ( global_timer, ((void*)0) );
        g_debug ( "%4.6f (%2.6f): Stopped", now, 0.0 );
        g_timer_destroy ( global_timer );
}
