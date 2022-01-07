
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct aout_sys_common {scalar_t__ i_render_host_time; scalar_t__ i_first_render_host_time; } ;
struct TYPE_4__ {scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;


 scalar_t__ HostTimeToTick (scalar_t__) ;
 scalar_t__ const ca_GetLatencyLocked (TYPE_1__*) ;
 int lock_lock (struct aout_sys_common*) ;
 int lock_unlock (struct aout_sys_common*) ;
 scalar_t__ const vlc_tick_now () ;

int
ca_TimeGet(audio_output_t *p_aout, vlc_tick_t *delay)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    lock_lock(p_sys);

    if (p_sys->i_render_host_time == 0 || p_sys->i_first_render_host_time == 0)
    {

        lock_unlock(p_sys);
        return -1;
    }

    const vlc_tick_t i_render_time_us = HostTimeToTick(p_sys->i_render_host_time);
    const vlc_tick_t i_render_delay = i_render_time_us - vlc_tick_now();

    *delay = ca_GetLatencyLocked(p_aout) + i_render_delay;
    lock_unlock(p_sys);
    return 0;
}
