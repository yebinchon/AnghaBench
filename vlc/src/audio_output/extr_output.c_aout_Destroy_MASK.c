#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * device_select; int /*<<< orphan*/ * mute_set; int /*<<< orphan*/ * volume_set; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  module; } ;
typedef  TYPE_2__ aout_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  FilterCallback ; 
 int /*<<< orphan*/  StereoModeCallback ; 
 int /*<<< orphan*/  ViewpointCallback ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_Copy ; 
 int /*<<< orphan*/  var_CopyDevice ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 

void FUNC8 (audio_output_t *aout)
{
    aout_owner_t *owner = FUNC1 (aout);

    FUNC5(&owner->lock);
    FUNC2 (aout, owner->module);
    /* Protect against late call from intf.c */
    aout->volume_set = NULL;
    aout->mute_set = NULL;
    aout->device_select = NULL;
    FUNC6(&owner->lock);

    FUNC3 (aout, "viewpoint", ViewpointCallback, NULL);
    FUNC3 (aout, "audio-filter", FilterCallback, NULL);
    FUNC3(aout, "device", var_CopyDevice, FUNC7(aout));
    FUNC3(aout, "mute", var_Copy, FUNC7(aout));
    FUNC4 (aout, "volume", -1.f);
    FUNC3(aout, "volume", var_Copy, FUNC7(aout));
    FUNC3 (aout, "stereo-mode", StereoModeCallback, NULL);
    FUNC0(aout);
}