
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int pa_stream ;
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_4__ {int mainloop; int context; int * stream; } ;
typedef TYPE_2__ demux_sys_t ;


 scalar_t__ likely (int ) ;
 int pa_stream_disconnect (int *) ;
 int pa_stream_set_buffer_attr_callback (int *,int *,int *) ;
 int pa_stream_set_moved_callback (int *,int *,int *) ;
 int pa_stream_set_overflow_callback (int *,int *,int *) ;
 int pa_stream_set_read_callback (int *,int *,int *) ;
 int pa_stream_set_started_callback (int *,int *,int *) ;
 int pa_stream_set_state_callback (int *,int *,int *) ;
 int pa_stream_set_suspended_callback (int *,int *,int *) ;
 int pa_stream_set_underflow_callback (int *,int *,int *) ;
 int pa_stream_unref (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int vlc_pa_disconnect (int *,int ,int ) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;
    pa_stream *s = sys->stream;

    if (likely(s != ((void*)0))) {
        pa_threaded_mainloop_lock(sys->mainloop);
        pa_stream_disconnect(s);
        pa_stream_set_state_callback(s, ((void*)0), ((void*)0));
        pa_stream_set_read_callback(s, ((void*)0), ((void*)0));
        pa_stream_set_buffer_attr_callback(s, ((void*)0), ((void*)0));
        pa_stream_set_moved_callback(s, ((void*)0), ((void*)0));
        pa_stream_set_overflow_callback(s, ((void*)0), ((void*)0));
        pa_stream_set_started_callback(s, ((void*)0), ((void*)0));
        pa_stream_set_suspended_callback(s, ((void*)0), ((void*)0));
        pa_stream_set_underflow_callback(s, ((void*)0), ((void*)0));
        pa_stream_unref(s);
        pa_threaded_mainloop_unlock(sys->mainloop);
    }

    vlc_pa_disconnect(obj, sys->context, sys->mainloop);
}
