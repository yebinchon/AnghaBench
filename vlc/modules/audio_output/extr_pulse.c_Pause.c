
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int pa_stream ;
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_8__ {scalar_t__ last_date; int mainloop; int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ likely (int) ;
 int pa_stream_set_latency_update_callback (int *,int *,TYPE_1__*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int * stream_latency_cb ;
 int stream_start_now (int *,TYPE_1__*) ;
 int stream_stop (int *,TYPE_1__*) ;

__attribute__((used)) static void Pause(audio_output_t *aout, bool paused, vlc_tick_t date)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;

    pa_threaded_mainloop_lock(sys->mainloop);

    if (paused) {
        pa_stream_set_latency_update_callback(s, ((void*)0), ((void*)0));
        stream_stop(s, aout);
    } else {
        pa_stream_set_latency_update_callback(s, stream_latency_cb, aout);
        if (likely(sys->last_date != VLC_TICK_INVALID))
            stream_start_now(s, aout);
    }

    pa_threaded_mainloop_unlock(sys->mainloop);
    (void) date;
}
