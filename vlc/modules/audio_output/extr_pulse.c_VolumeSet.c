
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ pa_volume_t ;
typedef int pa_stream ;
struct TYPE_8__ {int channels; } ;
typedef TYPE_1__ pa_sample_spec ;
typedef int pa_operation ;
typedef int pa_cvolume ;
struct TYPE_9__ {TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_10__ {int mainloop; int context; int cvolume; scalar_t__ volume_force; int * stream; } ;
typedef TYPE_3__ aout_sys_t ;


 scalar_t__ PA_VOLUME_MAX ;
 float PA_VOLUME_NORM ;
 int aout_VolumeReport (TYPE_2__*,float) ;
 int assert (int ) ;
 scalar_t__ likely (int ) ;
 scalar_t__ lroundf (float) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int * pa_context_set_sink_input_volume (int ,int ,int *,int *,int *) ;
 int pa_cvolume_scale (int *,float) ;
 int pa_cvolume_set (int *,int ,float) ;
 int pa_cvolume_valid (int *) ;
 int pa_operation_unref (int *) ;
 int pa_stream_get_index (int *) ;
 TYPE_1__* pa_stream_get_sample_spec (int *) ;
 int pa_sw_cvolume_multiply_scalar (int *,int *,scalar_t__) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int VolumeSet(audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;
    pa_operation *op;
    pa_volume_t volume;




    vol *= PA_VOLUME_NORM;
    if (unlikely(vol >= (float)PA_VOLUME_MAX))
        volume = PA_VOLUME_MAX;
    else
        volume = lroundf(vol);

    if (s == ((void*)0))
    {
        sys->volume_force = volume;
        aout_VolumeReport(aout, (float)volume / (float)PA_VOLUME_NORM);
        return 0;
    }

    pa_threaded_mainloop_lock(sys->mainloop);

    if (!pa_cvolume_valid(&sys->cvolume))
    {
        const pa_sample_spec *ss = pa_stream_get_sample_spec(s);

        msg_Warn(aout, "balance clobbered by volume change");
        pa_cvolume_set(&sys->cvolume, ss->channels, PA_VOLUME_NORM);
    }


    pa_cvolume cvolume = sys->cvolume;
    pa_cvolume_scale(&cvolume, PA_VOLUME_NORM);
    pa_sw_cvolume_multiply_scalar(&cvolume, &cvolume, volume);
    assert(pa_cvolume_valid(&cvolume));

    op = pa_context_set_sink_input_volume(sys->context, pa_stream_get_index(s),
                                          &cvolume, ((void*)0), ((void*)0));
    if (likely(op != ((void*)0)))
        pa_operation_unref(op);
    pa_threaded_mainloop_unlock(sys->mainloop);
    return likely(op != ((void*)0)) ? 0 : -1;
}
