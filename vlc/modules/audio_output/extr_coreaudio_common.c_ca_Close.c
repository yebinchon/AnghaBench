
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aout_sys_common {int flush_sem; } ;
struct TYPE_3__ {scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;


 int lock_destroy (struct aout_sys_common*) ;
 int vlc_sem_destroy (int *) ;

void
ca_Close(audio_output_t *p_aout)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    vlc_sem_destroy(&p_sys->flush_sem);
    lock_destroy(p_sys);
}
