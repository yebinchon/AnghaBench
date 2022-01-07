
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef scalar_t__ uintmax_t ;
struct TYPE_5__ {int lock; TYPE_2__* samples; int value; int updates; } ;
typedef TYPE_1__ input_rate_t ;
struct TYPE_6__ {scalar_t__ date; int value; } ;


 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 scalar_t__ VLC_TICK_INVALID ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_tick_now () ;

void input_rate_Add(input_rate_t *counter, uintmax_t val)
{
    vlc_mutex_lock(&counter->lock);
    counter->updates++;
    counter->value += val;


    vlc_tick_t now = vlc_tick_now();
    if (counter->samples[0].date != VLC_TICK_INVALID
     && (now - counter->samples[0].date) < VLC_TICK_FROM_SEC(1))
    {
        vlc_mutex_unlock(&counter->lock);
        return;
    }

    memcpy(counter->samples + 1, counter->samples,
           sizeof (counter->samples[0]));

    counter->samples[0].value = counter->value;
    counter->samples[0].date = now;
    vlc_mutex_unlock(&counter->lock);
}
