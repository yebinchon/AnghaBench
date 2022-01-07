
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pa_operation ;
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_8__ {int mainloop; int context; int * stream; int sink_force; } ;
typedef TYPE_2__ aout_sys_t ;


 int aout_DeviceReport (TYPE_1__*,char const*) ;
 int free (int ) ;
 scalar_t__ likely (int ) ;
 int msg_Dbg (TYPE_1__*,char*,char const*) ;
 int * pa_context_move_sink_input_by_name (int ,int ,char const*,int *,int *) ;
 int pa_operation_unref (int *) ;
 int pa_stream_get_index (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int strdup (char const*) ;
 int vlc_pa_error (TYPE_1__*,char*,int ) ;

__attribute__((used)) static int StreamMove(audio_output_t *aout, const char *name)
{
    aout_sys_t *sys = aout->sys;

    if (sys->stream == ((void*)0))
    {
        msg_Dbg(aout, "will connect to sink %s", name);
        free(sys->sink_force);
        sys->sink_force = strdup(name);
        aout_DeviceReport(aout, name);
        return 0;
    }

    pa_operation *op;
    uint32_t idx = pa_stream_get_index(sys->stream);

    pa_threaded_mainloop_lock(sys->mainloop);
    op = pa_context_move_sink_input_by_name(sys->context, idx, name,
                                            ((void*)0), ((void*)0));
    if (likely(op != ((void*)0))) {
        pa_operation_unref(op);
        msg_Dbg(aout, "moving to sink %s", name);
    } else
        vlc_pa_error(aout, "cannot move sink input", sys->context);
    pa_threaded_mainloop_unlock(sys->mainloop);

    return (op != ((void*)0)) ? 0 : -1;
}
