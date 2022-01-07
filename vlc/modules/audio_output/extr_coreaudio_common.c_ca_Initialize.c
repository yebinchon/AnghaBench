
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct aout_sys_common {int b_paused; size_t i_rate; size_t i_bytes_per_frame; size_t i_frame_length; size_t i_out_max_size; int b_played; int i_dev_latency_us; scalar_t__ chans_to_reorder; scalar_t__ i_render_frames; scalar_t__ i_first_render_host_time; scalar_t__ i_render_host_time; scalar_t__ i_underrun_size; } ;
struct TYPE_6__ {size_t i_rate; size_t i_bytes_per_frame; size_t i_frame_length; scalar_t__ channel_type; } ;
typedef TYPE_1__ audio_sample_format_t ;
struct TYPE_7__ {scalar_t__ sys; } ;
typedef TYPE_2__ audio_output_t ;


 scalar_t__ AUDIO_CHANNEL_TYPE_AMBISONICS ;
 int VLC_SUCCESS ;
 int ca_ClearOutBuffers (TYPE_2__*) ;

int
ca_Initialize(audio_output_t *p_aout, const audio_sample_format_t *fmt,
              vlc_tick_t i_dev_latency_us)
{
    struct aout_sys_common *p_sys = (struct aout_sys_common *) p_aout->sys;

    p_sys->i_underrun_size = 0;
    p_sys->b_paused = 0;
    p_sys->i_render_host_time = p_sys->i_first_render_host_time = 0;
    p_sys->i_render_frames = 0;

    p_sys->i_rate = fmt->i_rate;
    p_sys->i_bytes_per_frame = fmt->i_bytes_per_frame;
    p_sys->i_frame_length = fmt->i_frame_length;
    p_sys->chans_to_reorder = 0;

    p_sys->i_dev_latency_us = i_dev_latency_us;


    size_t i_audiobuffer_size = fmt->i_rate * fmt->i_bytes_per_frame
                              / p_sys->i_frame_length;
    if (fmt->channel_type == AUDIO_CHANNEL_TYPE_AMBISONICS)
    {


        p_sys->i_out_max_size = i_audiobuffer_size / 5;
    }
    else
    {

        p_sys->i_out_max_size = i_audiobuffer_size * 2;
    }

    ca_ClearOutBuffers(p_aout);
    p_sys->b_played = 0;

    return VLC_SUCCESS;
}
