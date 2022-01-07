
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct aout_sys_common {scalar_t__ i_dev_latency_us; scalar_t__ const i_render_frames; int i_out_size; } ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ sys; } ;
typedef TYPE_1__ audio_output_t ;


 scalar_t__ BytesToFrames (struct aout_sys_common*,int ) ;
 scalar_t__ FramesToUs (struct aout_sys_common*,scalar_t__ const) ;

__attribute__((used)) static vlc_tick_t
ca_GetLatencyLocked(audio_output_t *p_aout)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    const int64_t i_out_frames = BytesToFrames(p_sys, p_sys->i_out_size);
    return FramesToUs(p_sys, i_out_frames + p_sys->i_render_frames)
           + p_sys->i_dev_latency_us;
}
