#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ pa_usec_t ;
struct TYPE_3__ {scalar_t__ write_index; scalar_t__ write_index_corrupt; } ;
typedef  TYPE_1__ pa_timing_info ;
typedef  int /*<<< orphan*/  pa_stream ;
typedef  int /*<<< orphan*/  pa_sample_spec ;
typedef  int /*<<< orphan*/  pa_context ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ PA_ERR_NODATA ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

vlc_tick_t FUNC7(vlc_object_t *obj, pa_context *ctx, pa_stream *s)
{
    /* NOTE: pa_stream_get_latency() will report 0 rather than negative latency
     * when the write index of a playback stream is behind its read index.
     * playback streams. So use the lower-level pa_stream_get_timing_info()
     * directly to obtain the correct write index and convert it to a time,
     * and compute the correct latency value by subtracting the stream (read)
     * time.
     *
     * On the read side, pa_stream_get_time() is used instead of
     * pa_stream_get_timing_info() for the sake of interpolation. */
    const pa_sample_spec *ss = FUNC3(s);
    const pa_timing_info *ti = FUNC5(s);

    if (ti == NULL) {
        FUNC0(obj, "no timing infos");
        return VLC_TICK_INVALID;
    }

    if (ti->write_index_corrupt) {
        FUNC0(obj, "write index corrupt");
        return VLC_TICK_INVALID;
    }

    pa_usec_t wt = FUNC1((uint64_t)ti->write_index, ss);
    pa_usec_t rt;

    if (FUNC4(s, &rt)) {
        if (FUNC2(ctx) != PA_ERR_NODATA)
            FUNC6(obj, "unknown time", ctx);
        return VLC_TICK_INVALID;
    }

    union { uint64_t u; int64_t s; } d;
    d.u = wt - rt;
    return d.s; /* non-overflowing unsigned to signed conversion */
}