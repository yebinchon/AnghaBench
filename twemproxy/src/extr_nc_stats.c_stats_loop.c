
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int event_loop_stats (int ,void*) ;
 int stats_loop_callback ;

__attribute__((used)) static void *
stats_loop(void *arg)
{
    event_loop_stats(stats_loop_callback, arg);
    return ((void*)0);
}
