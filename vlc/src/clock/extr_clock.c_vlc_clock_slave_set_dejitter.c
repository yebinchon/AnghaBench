
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vlc_tick_t ;
typedef int vlc_clock_t ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static void vlc_clock_slave_set_dejitter(vlc_clock_t *clock, vlc_tick_t delay)
{
    VLC_UNUSED(clock);
    VLC_UNUSED(delay);
}
