
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* p; } ;
typedef TYPE_3__ vout_thread_t ;
struct TYPE_10__ {void* timestamp; void* date; TYPE_5__* decoded; } ;
struct TYPE_9__ {void* last; void* timestamp; } ;
struct TYPE_12__ {int delay; int clock; int display_lock; int * display; int decoder_fifo; TYPE_2__ displayed; TYPE_1__ step; } ;
typedef TYPE_4__ vout_thread_sys_t ;
typedef void* vlc_tick_t ;
struct TYPE_13__ {void* date; } ;
typedef TYPE_5__ picture_t ;


 int ThreadFilterFlush (TYPE_3__*,int) ;
 void* VLC_TICK_INVALID ;
 int assert (int ) ;
 int picture_Release (TYPE_5__*) ;
 int picture_fifo_Flush (int ,void*,int) ;
 int vlc_clock_Reset (int ) ;
 int vlc_clock_SetDelay (int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_FilterFlush (int *) ;

__attribute__((used)) static void vout_FlushUnlocked(vout_thread_t *vout, bool below,
                               vlc_tick_t date)
{
    vout_thread_sys_t *sys = vout->p;

    sys->step.timestamp = VLC_TICK_INVALID;
    sys->step.last = VLC_TICK_INVALID;

    ThreadFilterFlush(vout, 0);

    picture_t *last = sys->displayed.decoded;
    if (last) {
        if ((date == VLC_TICK_INVALID) ||
            ( below && last->date <= date) ||
            (!below && last->date >= date)) {
            picture_Release(last);

            sys->displayed.decoded = ((void*)0);
            sys->displayed.date = VLC_TICK_INVALID;
            sys->displayed.timestamp = VLC_TICK_INVALID;
        }
    }

    picture_fifo_Flush(sys->decoder_fifo, date, below);

    assert(sys->display != ((void*)0));
    vlc_mutex_lock(&sys->display_lock);
    vout_FilterFlush(sys->display);
    vlc_mutex_unlock(&sys->display_lock);

    vlc_clock_Reset(sys->clock);
    vlc_clock_SetDelay(sys->clock, sys->delay);
}
