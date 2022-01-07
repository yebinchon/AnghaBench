
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int pa_subscription_mask_t ;
typedef int pa_operation ;
typedef int pa_context ;
struct TYPE_7__ {int device_select; int mute_set; int volume_set; int drain; int flush; int pause; int play; int time_get; int stop; int start; TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_8__ {int mainloop; int * context; int * sinks; int * sink_force; int flags_force; int volume_force; int * stream; } ;
typedef TYPE_2__ aout_sys_t ;


 int Drain ;
 int Flush ;
 int MuteSet ;
 scalar_t__ PA_OPERATION_RUNNING ;
 int PA_STREAM_NOFLAGS ;
 int PA_SUBSCRIPTION_MASK_SINK ;
 int PA_SUBSCRIPTION_MASK_SINK_INPUT ;
 int PA_VOLUME_INVALID ;
 int Pause ;
 int Play ;
 int Start ;
 int Stop ;
 int StreamMove ;
 int TimeGet ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VolumeSet ;
 int context_cb ;
 int free (TYPE_2__*) ;
 scalar_t__ likely (int ) ;
 TYPE_2__* malloc (int) ;
 int * pa_context_get_sink_info_list (int *,int ,TYPE_1__*) ;
 int pa_context_set_subscribe_callback (int *,int ,TYPE_1__*) ;
 int * pa_context_subscribe (int *,int const,int *,int *) ;
 scalar_t__ pa_operation_get_state (int *) ;
 int pa_operation_unref (int *) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int pa_threaded_mainloop_wait (int ) ;
 int sink_add_cb ;
 scalar_t__ unlikely (int ) ;
 int * vlc_pa_connect (int *,int *) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = malloc(sizeof (*sys));
    pa_operation *op;

    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;


    pa_context *ctx = vlc_pa_connect(obj, &sys->mainloop);
    if (ctx == ((void*)0))
    {
        free(sys);
        return VLC_EGENERIC;
    }
    sys->stream = ((void*)0);
    sys->context = ctx;
    sys->volume_force = PA_VOLUME_INVALID;
    sys->flags_force = PA_STREAM_NOFLAGS;
    sys->sink_force = ((void*)0);
    sys->sinks = ((void*)0);

    aout->sys = sys;
    aout->start = Start;
    aout->stop = Stop;
    aout->time_get = TimeGet;
    aout->play = Play;
    aout->pause = Pause;
    aout->flush = Flush;
    aout->drain = Drain;
    aout->volume_set = VolumeSet;
    aout->mute_set = MuteSet;
    aout->device_select = StreamMove;

    pa_threaded_mainloop_lock(sys->mainloop);

    op = pa_context_get_sink_info_list(sys->context, sink_add_cb, aout);
    if (likely(op != ((void*)0)))
    {
        while (pa_operation_get_state(op) == PA_OPERATION_RUNNING)
            pa_threaded_mainloop_wait(sys->mainloop);
        pa_operation_unref(op);
    }


    const pa_subscription_mask_t mask = PA_SUBSCRIPTION_MASK_SINK
                                      | PA_SUBSCRIPTION_MASK_SINK_INPUT;
    pa_context_set_subscribe_callback(sys->context, context_cb, aout);
    op = pa_context_subscribe(sys->context, mask, ((void*)0), ((void*)0));
    if (likely(op != ((void*)0)))
       pa_operation_unref(op);
    pa_threaded_mainloop_unlock(sys->mainloop);

    return VLC_SUCCESS;
}
