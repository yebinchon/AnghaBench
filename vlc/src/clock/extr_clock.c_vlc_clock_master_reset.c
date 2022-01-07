
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_6__ {scalar_t__ delay; TYPE_2__* owner; } ;
typedef TYPE_1__ vlc_clock_t ;
struct TYPE_7__ {scalar_t__ delay; int lock; } ;
typedef TYPE_2__ vlc_clock_main_t ;


 int VLC_TICK_INVALID ;
 int assert (int) ;
 int vlc_clock_main_reset (TYPE_2__*) ;
 int vlc_clock_on_update (TYPE_1__*,int ,int ,float,int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void vlc_clock_master_reset(vlc_clock_t *clock)
{
    vlc_clock_main_t *main_clock = clock->owner;

    vlc_mutex_lock(&main_clock->lock);
    vlc_clock_main_reset(main_clock);

    assert(main_clock->delay <= 0);
    assert(clock->delay >= 0);

    if (clock->delay != 0 && main_clock->delay != 0)
    {
        vlc_tick_t delta = clock->delay + main_clock->delay;
        if (delta > 0)
        {
            clock->delay = delta;
            main_clock->delay = 0;
        }
        else
        {
            clock->delay = 0;
            main_clock->delay = delta;
        }
    }

    vlc_mutex_unlock(&main_clock->lock);

    vlc_clock_on_update(clock, VLC_TICK_INVALID, VLC_TICK_INVALID, 1.f, 0, 0);
}
