
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int block_t ;
struct TYPE_12__ {int (* play ) (TYPE_3__*,int *,int ) ;} ;
typedef TYPE_3__ audio_output_t ;
struct TYPE_11__ {int discontinuity; int clock; } ;
struct TYPE_10__ {int i_format; } ;
struct TYPE_13__ {int original_pts; TYPE_2__ sync; int filters; TYPE_1__ mixer_format; } ;
typedef TYPE_4__ aout_owner_t ;


 int VLC_TICK_INVALID ;
 int aout_Drain (TYPE_3__*) ;
 int * aout_FiltersDrain (int ) ;
 int aout_FiltersResetClock (int ) ;
 TYPE_4__* aout_owner (TYPE_3__*) ;
 int stub1 (TYPE_3__*,int *,int ) ;
 int vlc_clock_Reset (int ) ;
 int vlc_tick_now () ;

void aout_DecDrain(audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner (aout);

    if (!owner->mixer_format.i_format)
        return;

    block_t *block = aout_FiltersDrain (owner->filters);
    if (block)
        aout->play(aout, block, vlc_tick_now());

    aout_Drain(aout);

    vlc_clock_Reset(owner->sync.clock);
    aout_FiltersResetClock(owner->filters);

    owner->sync.discontinuity = 1;
    owner->original_pts = VLC_TICK_INVALID;
}
