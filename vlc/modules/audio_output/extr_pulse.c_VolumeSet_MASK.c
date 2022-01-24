#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pa_volume_t ;
typedef  int /*<<< orphan*/  pa_stream ;
struct TYPE_8__ {int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ pa_sample_spec ;
typedef  int /*<<< orphan*/  pa_operation ;
typedef  int /*<<< orphan*/  pa_cvolume ;
struct TYPE_9__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_10__ {int /*<<< orphan*/  mainloop; int /*<<< orphan*/  context; int /*<<< orphan*/  cvolume; scalar_t__ volume_force; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_3__ aout_sys_t ;

/* Variables and functions */
 scalar_t__ PA_VOLUME_MAX ; 
 float PA_VOLUME_NORM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(audio_output_t *aout, float vol)
{
    aout_sys_t *sys = aout->sys;
    pa_stream *s = sys->stream;
    pa_operation *op;
    pa_volume_t volume;

    /* VLC provides the software volume so convert directly to PulseAudio
     * software volume, pa_volume_t. This is not a linear amplification factor
     * so do not use PulseAudio linear amplification! */
    vol *= PA_VOLUME_NORM;
    if (FUNC15(vol >= (float)PA_VOLUME_MAX))
        volume = PA_VOLUME_MAX;
    else
        volume = FUNC3(vol);

    if (s == NULL)
    {
        sys->volume_force = volume;
        FUNC0(aout, (float)volume / (float)PA_VOLUME_NORM);
        return 0;
    }

    FUNC13(sys->mainloop);

    if (!FUNC8(&sys->cvolume))
    {
        const pa_sample_spec *ss = FUNC11(s);

        FUNC4(aout, "balance clobbered by volume change");
        FUNC7(&sys->cvolume, ss->channels, PA_VOLUME_NORM);
    }

    /* Preserve the balance (VLC does not support it). */
    pa_cvolume cvolume = sys->cvolume;
    FUNC6(&cvolume, PA_VOLUME_NORM);
    FUNC12(&cvolume, &cvolume, volume);
    FUNC1(FUNC8(&cvolume));

    op = FUNC5(sys->context, FUNC10(s),
                                          &cvolume, NULL, NULL);
    if (FUNC2(op != NULL))
        FUNC9(op);
    FUNC14(sys->mainloop);
    return FUNC2(op != NULL) ? 0 : -1;
}