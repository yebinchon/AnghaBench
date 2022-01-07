
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pa_operation ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_6__ {int flags_force; int mainloop; int context; int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 int PA_STREAM_START_MUTED ;
 int PA_STREAM_START_UNMUTED ;
 int aout_MuteReport (TYPE_1__*,int) ;
 scalar_t__ likely (int ) ;
 int * pa_context_set_sink_input_mute (int ,int ,int,int *,int *) ;
 int pa_operation_unref (int *) ;
 int pa_stream_get_index (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;

__attribute__((used)) static int MuteSet(audio_output_t *aout, bool mute)
{
    aout_sys_t *sys = aout->sys;

    if (sys->stream == ((void*)0))
    {
        sys->flags_force &= ~(PA_STREAM_START_MUTED|PA_STREAM_START_UNMUTED);
        sys->flags_force |=
            mute ? PA_STREAM_START_MUTED : PA_STREAM_START_UNMUTED;
        aout_MuteReport(aout, mute);
        return 0;
    }

    pa_operation *op;
    uint32_t idx = pa_stream_get_index(sys->stream);
    pa_threaded_mainloop_lock(sys->mainloop);
    op = pa_context_set_sink_input_mute(sys->context, idx, mute, ((void*)0), ((void*)0));
    if (likely(op != ((void*)0)))
        pa_operation_unref(op);
    pa_threaded_mainloop_unlock(sys->mainloop);

    return 0;
}
