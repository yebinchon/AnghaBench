#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int pa_subscription_mask_t ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  int /*<<< orphan*/  pa_context ;
struct TYPE_7__ {int /*<<< orphan*/  device_select; int /*<<< orphan*/  mute_set; int /*<<< orphan*/  volume_set; int /*<<< orphan*/  drain; int /*<<< orphan*/  flush; int /*<<< orphan*/  pause; int /*<<< orphan*/  play; int /*<<< orphan*/  time_get; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_8__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/ * context; int /*<<< orphan*/ * sinks; int /*<<< orphan*/ * sink_force; int /*<<< orphan*/  flags_force; int /*<<< orphan*/  volume_force; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Drain ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/  MuteSet ; 
 scalar_t__ PA_OPERATION_RUNNING ; 
 int /*<<< orphan*/  PA_STREAM_NOFLAGS ; 
 int PA_SUBSCRIPTION_MASK_SINK ; 
 int PA_SUBSCRIPTION_MASK_SINK_INPUT ; 
 int /*<<< orphan*/  PA_VOLUME_INVALID ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  Play ; 
 int /*<<< orphan*/  Start ; 
 int /*<<< orphan*/  Stop ; 
 int /*<<< orphan*/  StreamMove ; 
 int /*<<< orphan*/  TimeGet ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VolumeSet ; 
 int /*<<< orphan*/  context_cb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sink_add_cb ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = FUNC2(sizeof (*sys));
    pa_operation *op;

    if (FUNC11(sys == NULL))
        return VLC_ENOMEM;

    /* Allocate structures */
    pa_context *ctx = FUNC12(obj, &sys->mainloop);
    if (ctx == NULL)
    {
        FUNC0(sys);
        return VLC_EGENERIC;
    }
    sys->stream = NULL;
    sys->context = ctx;
    sys->volume_force = PA_VOLUME_INVALID;
    sys->flags_force = PA_STREAM_NOFLAGS;
    sys->sink_force = NULL;
    sys->sinks = NULL;

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

    FUNC8(sys->mainloop);
    /* Sinks (output devices) list */
    op = FUNC3(sys->context, sink_add_cb, aout);
    if (FUNC1(op != NULL))
    {
        while (FUNC6(op) == PA_OPERATION_RUNNING)
            FUNC10(sys->mainloop);
        FUNC7(op);
    }

    /* Context events */
    const pa_subscription_mask_t mask = PA_SUBSCRIPTION_MASK_SINK
                                      | PA_SUBSCRIPTION_MASK_SINK_INPUT;
    FUNC4(sys->context, context_cb, aout);
    op = FUNC5(sys->context, mask, NULL, NULL);
    if (FUNC1(op != NULL))
       FUNC7(op);
    FUNC9(sys->mainloop);

    return VLC_SUCCESS;
}