#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  audio_volume_t ;
struct TYPE_4__ {int /*<<< orphan*/ * module; int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ aout_volume_t ;

/* Variables and functions */
 int /*<<< orphan*/  ReplayGainCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(aout_volume_t *vol)
{
    if (vol == NULL)
        return;

    audio_volume_t *obj = &vol->object;

    if (vol->module != NULL)
        FUNC0(obj, vol->module);
    FUNC1(FUNC3(obj), "audio-replay-gain-mode",
                    ReplayGainCallback, vol);
    FUNC2(obj);
}