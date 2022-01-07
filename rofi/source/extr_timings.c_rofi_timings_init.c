
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_debug (char*,double,double) ;
 double g_timer_elapsed (int ,int *) ;
 int g_timer_new () ;
 int global_timer ;

void rofi_timings_init ( void )
{
    global_timer = g_timer_new ();
    double now = g_timer_elapsed ( global_timer, ((void*)0) );
    g_debug ( "%4.6f (%2.6f): Started", now, 0.0 );
}
