#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 scalar_t__ AOUT_VOLUME_DEFAULT ; 
 float FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,float) ; 
 float FUNC2 (float) ; 
 float FUNC3 (int /*<<< orphan*/ *,char*) ; 

int FUNC4 (audio_output_t *aout, int value, float *volp)
{
    int ret = -1;
    float stepSize = FUNC3 (aout, "volume-step") / (float)AOUT_VOLUME_DEFAULT;
    float delta = value * stepSize;
    float vol = FUNC0 (aout);

    if (vol >= 0.f)
    {
        vol += delta;
        if (vol < 0.f)
            vol = 0.f;
        if (vol > 2.f)
            vol = 2.f;
        vol = (FUNC2 (vol / stepSize)) * stepSize;
        if (volp != NULL)
            *volp = vol;
        ret = FUNC1 (aout, vol);
    }
    return ret;
}