
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_5__ {int mainloop; int * stream; int * trigger; } ;
typedef TYPE_2__ aout_sys_t ;


 int pa_stream_disconnect (int *) ;
 int pa_stream_set_buffer_attr_callback (int *,int *,int *) ;
 int pa_stream_set_event_callback (int *,int *,int *) ;
 int pa_stream_set_latency_update_callback (int *,int *,int *) ;
 int pa_stream_set_moved_callback (int *,int *,int *) ;
 int pa_stream_set_overflow_callback (int *,int *,int *) ;
 int pa_stream_set_started_callback (int *,int *,int *) ;
 int pa_stream_set_state_callback (int *,int *,int *) ;
 int pa_stream_set_suspended_callback (int *,int *,int *) ;
 int pa_stream_set_underflow_callback (int *,int *,int *) ;
 int pa_stream_unref (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 scalar_t__ unlikely (int ) ;
 int vlc_pa_rttime_free (int ,int *) ;

__attribute__((used)) static void Stop(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;

    pa_threaded_mainloop_lock(sys->mainloop);
    if (unlikely(sys->trigger != ((void*)0)))
        vlc_pa_rttime_free(sys->mainloop, sys->trigger);
    pa_stream_disconnect(s);


    pa_stream_set_state_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_buffer_attr_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_event_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_latency_update_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_moved_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_overflow_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_started_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_suspended_callback(s, ((void*)0), ((void*)0));
    pa_stream_set_underflow_callback(s, ((void*)0), ((void*)0));

    pa_stream_unref(s);
    sys->stream = ((void*)0);
    pa_threaded_mainloop_unlock(sys->mainloop);
}
