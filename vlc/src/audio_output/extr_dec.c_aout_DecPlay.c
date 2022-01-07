
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_23__ {scalar_t__ i_pts; int i_flags; int i_nb_samples; int i_length; } ;
typedef TYPE_4__ block_t ;
struct TYPE_24__ {int (* play ) (TYPE_5__*,TYPE_4__*,scalar_t__) ;} ;
typedef TYPE_5__ audio_output_t ;
struct TYPE_22__ {int discontinuity; scalar_t__ request_delay; scalar_t__ delay; int rate; int clock; } ;
struct TYPE_21__ {int lock; int update; int value; } ;
struct TYPE_20__ {int i_rate; } ;
struct TYPE_25__ {scalar_t__ original_pts; int buffers_lost; TYPE_3__ sync; int buffers_played; int filters; int volume; TYPE_2__ vp; TYPE_1__ input_format; } ;
typedef TYPE_6__ aout_owner_t ;


 int AOUT_DEC_FAILED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 scalar_t__ INT64_MAX ;
 scalar_t__ VLC_TICK_INVALID ;
 int aout_CheckReady (TYPE_5__*) ;
 int aout_DecSilence (TYPE_5__*,scalar_t__,scalar_t__) ;
 int aout_DecSynchronize (TYPE_5__*,scalar_t__,scalar_t__ const) ;
 int aout_FiltersChangeViewpoint (int ,int *) ;
 TYPE_4__* aout_FiltersPlay (int ,TYPE_4__*,int ) ;
 int aout_FiltersSetClockDelay (int ,scalar_t__) ;
 TYPE_6__* aout_owner (TYPE_5__*) ;
 int aout_volume_Amplify (int ,TYPE_4__*) ;
 int assert (int) ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 scalar_t__ atomic_load_explicit (int *,int ) ;
 int atomic_store_explicit (int *,int,int ) ;
 int block_Release (TYPE_4__*) ;
 int memory_order_relaxed ;
 int stub1 (TYPE_5__*,TYPE_4__*,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_clock_ConvertToSystem (int ,scalar_t__,scalar_t__ const,int ) ;
 scalar_t__ vlc_clock_SetDelay (int ,scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_tick_from_samples (int ,int ) ;
 scalar_t__ vlc_tick_now () ;

int aout_DecPlay(audio_output_t *aout, block_t *block)
{
    aout_owner_t *owner = aout_owner (aout);

    assert (block->i_pts != VLC_TICK_INVALID);

    block->i_length = vlc_tick_from_samples( block->i_nb_samples,
                                   owner->input_format.i_rate );

    int ret = aout_CheckReady (aout);
    if (unlikely(ret == AOUT_DEC_FAILED))
        goto drop;

    if (block->i_flags & BLOCK_FLAG_DISCONTINUITY)
    {
        owner->sync.discontinuity = 1;
        owner->original_pts = VLC_TICK_INVALID;
    }

    if (atomic_load_explicit(&owner->vp.update, memory_order_relaxed))
    {
        vlc_mutex_lock (&owner->vp.lock);
        aout_FiltersChangeViewpoint (owner->filters, &owner->vp.value);
        atomic_store_explicit(&owner->vp.update, 0, memory_order_relaxed);
        vlc_mutex_unlock (&owner->vp.lock);
    }

    if (owner->original_pts == VLC_TICK_INVALID)
    {




        owner->original_pts = block->i_pts;
    }

    block = aout_FiltersPlay(owner->filters, block, owner->sync.rate);
    if (block == ((void*)0))
        return ret;

    const vlc_tick_t original_pts = owner->original_pts;
    owner->original_pts = VLC_TICK_INVALID;


    aout_volume_Amplify (owner->volume, block);


    if (owner->sync.request_delay != owner->sync.delay)
    {
        owner->sync.delay = owner->sync.request_delay;
        vlc_tick_t delta = vlc_clock_SetDelay(owner->sync.clock, owner->sync.delay);
        aout_FiltersSetClockDelay(owner->filters, owner->sync.delay);
        if (delta > 0)
            aout_DecSilence (aout, delta, block->i_pts);
    }


    vlc_tick_t system_now = vlc_tick_now();
    aout_DecSynchronize(aout, system_now, original_pts);

    vlc_tick_t play_date =
        vlc_clock_ConvertToSystem(owner->sync.clock, system_now, original_pts,
                                  owner->sync.rate);
    if (unlikely(play_date == INT64_MAX))
    {


        play_date = system_now;

    }

    owner->sync.discontinuity = 0;
    aout->play(aout, block, play_date);

    atomic_fetch_add_explicit(&owner->buffers_played, 1, memory_order_relaxed);
    return ret;
drop:
    owner->sync.discontinuity = 1;
    owner->original_pts = VLC_TICK_INVALID;
    block_Release (block);
    atomic_fetch_add_explicit(&owner->buffers_lost, 1, memory_order_relaxed);
    return ret;
}
