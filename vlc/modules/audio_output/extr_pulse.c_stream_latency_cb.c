
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {scalar_t__ last_date; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ pa_stream_is_corked (int *) ;
 int stream_start (int *,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void stream_latency_cb(pa_stream *s, void *userdata)
{
    audio_output_t *aout = userdata;
    aout_sys_t *sys = aout->sys;


    if (sys->last_date == VLC_TICK_INVALID)
        return;
    if (pa_stream_is_corked(s) > 0)
        stream_start(s, aout, sys->last_date);
}
