
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_12__ {scalar_t__ (* time_get ) (TYPE_2__*,scalar_t__*) ;} ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_11__ {int rate; int clock; scalar_t__ discontinuity; } ;
struct TYPE_13__ {TYPE_1__ sync; } ;
typedef TYPE_3__ aout_owner_t ;


 int aout_DecSilence (TYPE_2__*,scalar_t__,scalar_t__) ;
 int aout_RequestRetiming (TYPE_2__*,scalar_t__,scalar_t__) ;
 TYPE_3__* aout_owner (TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*,scalar_t__*) ;
 scalar_t__ stub2 (TYPE_2__*,scalar_t__*) ;
 scalar_t__ vlc_clock_ConvertToSystem (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void aout_DecSynchronize(audio_output_t *aout, vlc_tick_t system_now,
                                vlc_tick_t dec_pts)
{
    aout_owner_t *owner = aout_owner (aout);
    vlc_tick_t delay;

    if (aout->time_get(aout, &delay) != 0)
        return;

    if (owner->sync.discontinuity)
    {
        vlc_tick_t play_date =
            vlc_clock_ConvertToSystem(owner->sync.clock, system_now + delay,
                                      dec_pts, owner->sync.rate);
        vlc_tick_t jitter = play_date - system_now;
        if (jitter > 0)
        {
            aout_DecSilence (aout, jitter, dec_pts - delay);
            if (aout->time_get(aout, &delay) != 0)
                return;
        }
    }

    aout_RequestRetiming(aout, system_now + delay, dec_pts);
}
