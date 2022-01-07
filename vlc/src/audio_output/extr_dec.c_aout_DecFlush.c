
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int (* flush ) (TYPE_3__*) ;} ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_10__ {scalar_t__ delay; scalar_t__ request_delay; int discontinuity; int clock; } ;
struct TYPE_9__ {scalar_t__ i_format; } ;
struct TYPE_12__ {int original_pts; TYPE_2__ sync; int filters; TYPE_1__ mixer_format; } ;
typedef TYPE_4__ aout_owner_t ;


 int VLC_TICK_INVALID ;
 int aout_FiltersFlush (int ) ;
 int aout_FiltersResetClock (int ) ;
 int aout_FiltersSetClockDelay (int ,int ) ;
 TYPE_4__* aout_owner (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int vlc_clock_Reset (int ) ;
 int vlc_clock_SetDelay (int ,int ) ;

void aout_DecFlush(audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner (aout);

    if (owner->mixer_format.i_format)
    {
        aout_FiltersFlush (owner->filters);

        aout->flush(aout);
        vlc_clock_Reset(owner->sync.clock);
        aout_FiltersResetClock(owner->filters);

        if (owner->sync.delay > 0)
        {






            vlc_clock_SetDelay(owner->sync.clock, 0);
            aout_FiltersSetClockDelay(owner->filters, 0);
            owner->sync.request_delay = owner->sync.delay;
            owner->sync.delay = 0;
        }
    }
    owner->sync.discontinuity = 1;
    owner->original_pts = VLC_TICK_INVALID;
}
