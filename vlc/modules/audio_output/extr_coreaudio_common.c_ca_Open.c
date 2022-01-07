
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct aout_sys_common {int * p_out_chain; int flush_sem; } ;
struct TYPE_5__ {int time_get; int flush; int pause; int play; scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {scalar_t__ denom; scalar_t__ numer; } ;


 scalar_t__ KERN_SUCCESS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int ca_Flush ;
 int ca_Pause ;
 int ca_Play ;
 int ca_TimeGet ;
 int lock_init (struct aout_sys_common*) ;
 scalar_t__ mach_timebase_info (TYPE_2__*) ;
 TYPE_2__ tinfo ;
 int vlc_sem_init (int *,int ) ;

int
ca_Open(audio_output_t *p_aout)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    if (mach_timebase_info(&tinfo) != KERN_SUCCESS)
    {
        tinfo.numer = tinfo.denom = 0;
        return VLC_EGENERIC;
    }

    vlc_sem_init(&p_sys->flush_sem, 0);
    lock_init(p_sys);
    p_sys->p_out_chain = ((void*)0);

    p_aout->play = ca_Play;
    p_aout->pause = ca_Pause;
    p_aout->flush = ca_Flush;
    p_aout->time_get = ca_TimeGet;

    return VLC_SUCCESS;
}
