
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_8__ {scalar_t__ i_format; } ;
struct TYPE_6__ {int delay; int clock; int resamp_type; } ;
struct TYPE_7__ {TYPE_4__ mixer_format; TYPE_1__ sync; int * filters; int filters_cfg; TYPE_4__ filter_format; int volume; TYPE_4__ input_format; int restart; } ;
typedef TYPE_2__ aout_owner_t ;


 int AOUT_DEC_CHANGED ;
 int AOUT_DEC_FAILED ;
 int AOUT_DEC_SUCCESS ;
 int AOUT_FILTERS_CFG_INIT ;
 int AOUT_RESAMPLING_NONE ;
 int AOUT_RESTART_OUTPUT ;
 int VLC_OBJECT (int *) ;
 int aout_FiltersDelete (int *,int *) ;
 int * aout_FiltersNewWithClock (int ,int ,TYPE_4__*,TYPE_4__*,int *) ;
 int aout_FiltersSetClockDelay (int *,int ) ;
 int aout_OutputDelete (int *) ;
 scalar_t__ aout_OutputNew (int *) ;
 TYPE_2__* aout_owner (int *) ;
 int aout_volume_SetFormat (int ,scalar_t__) ;
 int atomic_exchange_explicit (int *,int ,int ) ;
 int memory_order_acquire ;
 int msg_Dbg (int *,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aout_CheckReady (audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner (aout);
    int status = AOUT_DEC_SUCCESS;

    int restart = atomic_exchange_explicit(&owner->restart, 0,
                                           memory_order_acquire);
    if (unlikely(restart))
    {
        if (owner->mixer_format.i_format)
            aout_FiltersDelete (aout, owner->filters);

        if (restart & AOUT_RESTART_OUTPUT)
        {
            msg_Dbg (aout, "restarting output...");
            if (owner->mixer_format.i_format)
                aout_OutputDelete (aout);
            owner->filter_format = owner->mixer_format = owner->input_format;
            owner->filters_cfg = AOUT_FILTERS_CFG_INIT;
            if (aout_OutputNew (aout))
                owner->mixer_format.i_format = 0;
            aout_volume_SetFormat (owner->volume,
                                   owner->mixer_format.i_format);





            if (restart == AOUT_RESTART_OUTPUT)
                status = AOUT_DEC_CHANGED;
        }

        msg_Dbg (aout, "restarting filters...");
        owner->sync.resamp_type = AOUT_RESAMPLING_NONE;

        if (owner->mixer_format.i_format)
        {
            owner->filters = aout_FiltersNewWithClock(VLC_OBJECT(aout),
                                                      owner->sync.clock,
                                                      &owner->filter_format,
                                                      &owner->mixer_format,
                                                      &owner->filters_cfg);
            if (owner->filters == ((void*)0))
            {
                aout_OutputDelete (aout);
                owner->mixer_format.i_format = 0;
            }
            aout_FiltersSetClockDelay(owner->filters, owner->sync.delay);
        }



    }
    return (owner->mixer_format.i_format) ? status : AOUT_DEC_FAILED;
}
