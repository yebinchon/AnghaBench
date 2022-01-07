
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlc_timer_t ;
typedef int vlc_tick_t ;
struct TYPE_3__ {scalar_t__ htimer; scalar_t__ hev; scalar_t__ interval; } ;
typedef int HSEM ;


 scalar_t__ DosAsyncTimer (scalar_t__,int ,scalar_t__*) ;
 int DosStopTimer (scalar_t__) ;
 scalar_t__ MS_FROM_VLC_TICK (int) ;
 scalar_t__ NULLHANDLE ;
 int VLC_TIMER_DISARM ;
 int abort () ;
 scalar_t__ vlc_tick_now () ;

void vlc_timer_schedule (vlc_timer_t timer, bool absolute,
                         vlc_tick_t value, vlc_tick_t interval)
{
    if (timer->htimer != NULLHANDLE)
    {
        DosStopTimer (timer->htimer);
        timer->htimer = NULLHANDLE;
        timer->interval = 0;
    }

    if (value == VLC_TIMER_DISARM)
        return;

    if (absolute)
        value -= vlc_tick_now ();
    value = (value + 999) / 1000;
    interval = (interval + 999) / 1000;

    timer->interval = MS_FROM_VLC_TICK(interval);
    if (DosAsyncTimer (MS_FROM_VLC_TICK(value), (HSEM)timer->hev, &timer->htimer))
        abort ();
}
