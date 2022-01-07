
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pa_stream ;
typedef int pa_operation ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int mainloop; int last_date; int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 int VLC_TICK_INVALID ;
 int pa_operation_unref (int *) ;
 int * pa_stream_flush (int *,int *,int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int stream_stop (int *,TYPE_1__*) ;

__attribute__((used)) static void Flush(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;

    pa_threaded_mainloop_lock(sys->mainloop);

    pa_operation *op = pa_stream_flush(s, ((void*)0), ((void*)0));
    if (op != ((void*)0))
        pa_operation_unref(op);
    sys->last_date = VLC_TICK_INVALID;
    stream_stop(s, aout);

    pa_threaded_mainloop_unlock(sys->mainloop);
}
