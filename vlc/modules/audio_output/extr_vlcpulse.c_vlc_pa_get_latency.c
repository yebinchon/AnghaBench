
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int vlc_object_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ pa_usec_t ;
struct TYPE_3__ {scalar_t__ write_index; scalar_t__ write_index_corrupt; } ;
typedef TYPE_1__ pa_timing_info ;
typedef int pa_stream ;
typedef int pa_sample_spec ;
typedef int pa_context ;
typedef int int64_t ;


 scalar_t__ PA_ERR_NODATA ;
 int VLC_TICK_INVALID ;
 int msg_Dbg (int *,char*) ;
 scalar_t__ pa_bytes_to_usec (scalar_t__,int const*) ;
 scalar_t__ pa_context_errno (int *) ;
 int * pa_stream_get_sample_spec (int *) ;
 scalar_t__ pa_stream_get_time (int *,scalar_t__*) ;
 TYPE_1__* pa_stream_get_timing_info (int *) ;
 int vlc_pa_error (int *,char*,int *) ;

vlc_tick_t vlc_pa_get_latency(vlc_object_t *obj, pa_context *ctx, pa_stream *s)
{
    const pa_sample_spec *ss = pa_stream_get_sample_spec(s);
    const pa_timing_info *ti = pa_stream_get_timing_info(s);

    if (ti == ((void*)0)) {
        msg_Dbg(obj, "no timing infos");
        return VLC_TICK_INVALID;
    }

    if (ti->write_index_corrupt) {
        msg_Dbg(obj, "write index corrupt");
        return VLC_TICK_INVALID;
    }

    pa_usec_t wt = pa_bytes_to_usec((uint64_t)ti->write_index, ss);
    pa_usec_t rt;

    if (pa_stream_get_time(s, &rt)) {
        if (pa_context_errno(ctx) != PA_ERR_NODATA)
            vlc_pa_error(obj, "unknown time", ctx);
        return VLC_TICK_INVALID;
    }

    union { uint64_t u; int64_t s; } d;
    d.u = wt - rt;
    return d.s;
}
