
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct aout_sys_common {int b_do_flush; int b_played; scalar_t__ i_render_frames; scalar_t__ i_first_render_host_time; scalar_t__ i_render_host_time; int flush_sem; scalar_t__ b_paused; } ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;


 int assert (int) ;
 int ca_ClearOutBuffers (TYPE_1__*) ;
 int lock_lock (struct aout_sys_common*) ;
 int lock_unlock (struct aout_sys_common*) ;
 int vlc_sem_wait (int *) ;

void
ca_Flush(audio_output_t *p_aout)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    lock_lock(p_sys);

    assert(!p_sys->b_do_flush);
    if (p_sys->b_paused)
        ca_ClearOutBuffers(p_aout);
    else
    {
        p_sys->b_do_flush = 1;
        lock_unlock(p_sys);
        vlc_sem_wait(&p_sys->flush_sem);
        lock_lock(p_sys);
    }

    p_sys->i_render_host_time = p_sys->i_first_render_host_time = 0;
    p_sys->i_render_frames = 0;
    lock_unlock(p_sys);

    p_sys->b_played = 0;
}
