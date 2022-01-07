
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_4__ {double delay; int * owner; } ;
typedef TYPE_1__ vlc_clock_t ;
typedef int vlc_clock_main_t ;


 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ main_stream_to_system (int *,scalar_t__) ;
 scalar_t__ vlc_clock_monotonic_to_system_locked (TYPE_1__*,scalar_t__,scalar_t__,double) ;

__attribute__((used)) static vlc_tick_t vlc_clock_master_to_system_locked(vlc_clock_t *clock,
                                                    vlc_tick_t now,
                                                    vlc_tick_t ts, double rate)
{
    vlc_clock_main_t *main_clock = clock->owner;
    vlc_tick_t system = main_stream_to_system(main_clock, ts);
    if (system == VLC_TICK_INVALID)
    {


        system = vlc_clock_monotonic_to_system_locked(clock, now, ts, rate);
    }

    return system + clock->delay * rate;
}
