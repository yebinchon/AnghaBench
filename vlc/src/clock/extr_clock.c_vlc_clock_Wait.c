
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_5__ {scalar_t__ (* to_system_locked ) (TYPE_1__*,scalar_t__,scalar_t__,double) ;TYPE_2__* owner; } ;
typedef TYPE_1__ vlc_clock_t ;
struct TYPE_6__ {scalar_t__ pause_date; int lock; int cond; int abort; } ;
typedef TYPE_2__ vlc_clock_main_t ;


 scalar_t__ INT64_MAX ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ __MIN (scalar_t__,scalar_t__ const) ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__,scalar_t__,double) ;
 scalar_t__ vlc_cond_timedwait (int *,int *,scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int vlc_clock_Wait(vlc_clock_t *clock, vlc_tick_t system_now, vlc_tick_t ts,
                   double rate, vlc_tick_t max_duration)
{
    vlc_clock_main_t *main_clock = clock->owner;
    vlc_mutex_lock(&main_clock->lock);
    const vlc_tick_t max_deadline =
        max_duration > 0 ? system_now + max_duration : INT64_MAX;
    while (!main_clock->abort)
    {
        vlc_tick_t deadline;
        if (main_clock->pause_date != VLC_TICK_INVALID)
            deadline = INT64_MAX;
        else
            deadline = clock->to_system_locked(clock, system_now, ts, rate);
        deadline = __MIN(deadline, max_deadline);

        if (vlc_cond_timedwait(&main_clock->cond, &main_clock->lock, deadline))
        {
            vlc_mutex_unlock(&main_clock->lock);
            return 0;
        }
    }
    vlc_mutex_unlock(&main_clock->lock);
    return -1;
}
