
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint64_t ;
struct TYPE_2__ {int quotient; int remainder; int divider; } ;


 int VLC_TICK_FROM_NS (int) ;
 int mach_absolute_time () ;
 TYPE_1__ vlc_clock_conversion ;
 int vlc_clock_setup () ;

vlc_tick_t vlc_tick_now (void)
{
    vlc_clock_setup();
    uint64_t date = mach_absolute_time();

    date = date * vlc_clock_conversion.quotient +
        date * vlc_clock_conversion.remainder / vlc_clock_conversion.divider;
    return VLC_TICK_FROM_NS(date);
}
