
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct aout_sys_common {int b_paused; int b_do_flush; int b_played; int flush_sem; } ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;


 int ca_ClearOutBuffers (TYPE_1__*) ;
 int lock_lock (struct aout_sys_common*) ;
 int lock_unlock (struct aout_sys_common*) ;
 int vlc_sem_post (int *) ;

void
ca_SetAliveState(audio_output_t *p_aout, bool alive)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    lock_lock(p_sys);

    bool b_sem_post = 0;
    p_sys->b_paused = !alive;
    if (!alive && p_sys->b_do_flush)
    {
        ca_ClearOutBuffers(p_aout);
        p_sys->b_played = 0;
        p_sys->b_do_flush = 0;
        b_sem_post = 1;
    }

    lock_unlock(p_sys);

    if (b_sem_post)
        vlc_sem_post(&p_sys->flush_sem);
}
