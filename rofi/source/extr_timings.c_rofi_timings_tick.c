
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_debug (char*,double,double,char const*,char const*,int,char const*) ;
 double g_timer_elapsed (int ,int *) ;
 int global_timer ;
 double global_timer_last ;

void rofi_timings_tick ( const char *file, char const *str, int line, char const *msg )
{
    double now = g_timer_elapsed ( global_timer, ((void*)0) );

    g_debug ( "%4.6f (%2.6f): %s:%s:%-3d %s", now, now - global_timer_last, file, str, line, msg );
    global_timer_last = now;
}
