
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* vlc_tick_t ;
struct TYPE_8__ {scalar_t__ system; } ;
struct TYPE_7__ {scalar_t__ system; } ;
struct TYPE_6__ {int system; } ;
struct TYPE_9__ {scalar_t__ pause_date; scalar_t__ offset; int lock; int cond; TYPE_3__ wait_sync_ref; TYPE_2__ first_pcr; TYPE_1__ last; } ;
typedef TYPE_4__ vlc_clock_main_t ;


 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 int vlc_cond_broadcast (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void vlc_clock_main_ChangePause(vlc_clock_main_t *main_clock, vlc_tick_t now,
                                bool paused)
{
    vlc_mutex_lock(&main_clock->lock);
    assert(paused == (main_clock->pause_date == VLC_TICK_INVALID));

    if (paused)
        main_clock->pause_date = now;
    else
    {




        const vlc_tick_t delay = now - main_clock->pause_date;
        if (main_clock->offset != VLC_TICK_INVALID)
        {
            main_clock->last.system += delay;
            main_clock->offset += delay;
        }
        if (main_clock->first_pcr.system != VLC_TICK_INVALID)
            main_clock->first_pcr.system += delay;
        if (main_clock->wait_sync_ref.system != VLC_TICK_INVALID)
            main_clock->wait_sync_ref.system += delay;
        main_clock->pause_date = VLC_TICK_INVALID;
        vlc_cond_broadcast(&main_clock->cond);
    }
    vlc_mutex_unlock(&main_clock->lock);
}
