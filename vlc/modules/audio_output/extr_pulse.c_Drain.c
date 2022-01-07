
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int pa_stream ;
typedef int pa_operation ;
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_8__ {int mainloop; int last_date; int * trigger; int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 scalar_t__ TimeGet (TYPE_1__*,scalar_t__*) ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 int VLC_TICK_INVALID ;
 int pa_operation_unref (int *) ;
 int * pa_stream_drain (int *,int *,int *) ;
 scalar_t__ pa_stream_is_corked (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int stream_start_now (int *,TYPE_1__*) ;
 int stream_stop (int *,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 int vlc_pa_rttime_free (int ,int *) ;
 int vlc_tick_sleep (scalar_t__) ;

__attribute__((used)) static void Drain(audio_output_t *aout)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;

    pa_threaded_mainloop_lock(sys->mainloop);

    if (unlikely(pa_stream_is_corked(s) > 0))
    {




        if (sys->trigger != ((void*)0))
        {
            vlc_pa_rttime_free(sys->mainloop, sys->trigger);
            sys->trigger = ((void*)0);
        }
        stream_start_now(s, aout);
    }

    pa_operation *op = pa_stream_drain(s, ((void*)0), ((void*)0));
    if (op != ((void*)0))
        pa_operation_unref(op);
    sys->last_date = VLC_TICK_INVALID;



    vlc_tick_t delay;
    if (TimeGet(aout, &delay) == 0 && delay <= VLC_TICK_FROM_SEC(5))
    {
        pa_threaded_mainloop_unlock(sys->mainloop);
        vlc_tick_sleep(delay);
        pa_threaded_mainloop_lock(sys->mainloop);
    }

    stream_stop(s, aout);
    pa_threaded_mainloop_unlock(sys->mainloop);
}
