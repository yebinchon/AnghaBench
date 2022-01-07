
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vlc_timer_t ;
typedef scalar_t__ vlc_tick_t ;
struct TYPE_3__ {int lock; int reschedule; scalar_t__ interval; scalar_t__ value; } ;


 scalar_t__ VLC_TIMER_DISARM ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_tick_now () ;

void vlc_timer_schedule (vlc_timer_t timer, bool absolute,
                         vlc_tick_t value, vlc_tick_t interval)
{
    if (value == VLC_TIMER_DISARM)
        interval = 0;
    else
    if (!absolute)
        value += vlc_tick_now();

    vlc_mutex_lock (&timer->lock);
    timer->value = value;
    timer->interval = interval;
    vlc_cond_signal (&timer->reschedule);
    vlc_mutex_unlock (&timer->lock);
}
