#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  mute_set; int /*<<< orphan*/  volume_set; int /*<<< orphan*/ * drain; int /*<<< orphan*/  flush; int /*<<< orphan*/  pause; int /*<<< orphan*/  play; int /*<<< orphan*/  time_get; int /*<<< orphan*/  stop; int /*<<< orphan*/  start; TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int volume; int mute; int ready; int /*<<< orphan*/ * set_volume; void* drain; int /*<<< orphan*/ * play; int /*<<< orphan*/  lock; void* flush; void* resume; void* pause; void* channels; void* rate; void* opaque; int /*<<< orphan*/ * cleanup; void* setup_opaque; int /*<<< orphan*/ * setup; } ;
typedef  TYPE_2__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/ * Drain ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/  MuteSet ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  Play ; 
 int /*<<< orphan*/  SoftMuteSet ; 
 int /*<<< orphan*/  SoftVolumeSet ; 
 int /*<<< orphan*/  Start ; 
 int /*<<< orphan*/  Stop ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VolumeSet ; 
 int /*<<< orphan*/  aout_TimeGetDefault ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (vlc_object_t *obj)
{
    audio_output_t *aout = (audio_output_t *)obj;
    aout_sys_t *sys = FUNC1 (sizeof (*sys));
    if (FUNC2(sys == NULL))
        return VLC_ENOMEM;

    void *opaque = FUNC3 (obj, "amem-data");
    sys->setup = FUNC3 (obj, "amem-setup");
    if (sys->setup != NULL)
    {
        sys->cleanup = FUNC3 (obj, "amem-cleanup");
        sys->setup_opaque = opaque;
    }
    else
    {
        sys->cleanup = NULL;
        sys->opaque = opaque;
        sys->rate = FUNC4 (obj, "amem-rate");
        sys->channels = FUNC4 (obj, "amem-channels");
    }

    sys->play = FUNC3 (obj, "amem-play");
    sys->pause = FUNC3 (obj, "amem-pause");
    sys->resume = FUNC3 (obj, "amem-resume");
    sys->flush = FUNC3 (obj, "amem-flush");
    sys->drain = FUNC3 (obj, "amem-drain");
    sys->set_volume = FUNC3 (obj, "amem-set-volume");
    sys->volume = 1.;
    sys->mute = false;
    sys->ready = false;
    FUNC5(&sys->lock);

    if (sys->play == NULL)
    {
        FUNC0 (sys);
        return VLC_EGENERIC;
    }

    aout->sys = sys;
    aout->start = Start;
    aout->stop = Stop;
    aout->time_get = aout_TimeGetDefault;
    aout->play = Play;
    aout->pause = Pause;
    aout->flush = Flush;
    aout->drain = sys->drain ? Drain : NULL;
    if (sys->set_volume != NULL)
    {
        aout->volume_set = VolumeSet;
        aout->mute_set = MuteSet;
    }
    else
    {
        aout->volume_set = SoftVolumeSet;
        aout->mute_set = SoftMuteSet;
    }
    return VLC_SUCCESS;
}