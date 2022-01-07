
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int pa_stream ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int mainloop; int context; int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ pa_stream_is_corked (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 scalar_t__ vlc_pa_get_latency (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int TimeGet(audio_output_t *aout, vlc_tick_t *restrict delay)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;
    int ret = -1;

    pa_threaded_mainloop_lock(sys->mainloop);
    if (pa_stream_is_corked(s) <= 0)
    {
        vlc_tick_t delta = vlc_pa_get_latency(aout, sys->context, s);
        if (delta != VLC_TICK_INVALID)
        {
            *delay = delta;
            ret = 0;
        }
    }
    pa_threaded_mainloop_unlock(sys->mainloop);
    return ret;
}
