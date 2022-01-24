#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_7__ {float f_volume; int /*<<< orphan*/  au_unit; int /*<<< orphan*/  b_mute; scalar_t__ b_digital; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int OSStatus ;

/* Variables and functions */
 float AOUT_VOLUME_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,float) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kAudioUnitScope_Global ; 
 int /*<<< orphan*/  kHALOutputParam_Volume ; 
 int /*<<< orphan*/  FUNC3 (float) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int
FUNC5(audio_output_t * p_aout, float volume)
{
    aout_sys_t *p_sys = p_aout->sys;
    OSStatus ostatus = 0;

    if (p_sys->b_digital)
        return VLC_EGENERIC;

    p_sys->f_volume = volume;
    FUNC1(p_aout, volume);

    /* Set volume for output unit */
    if (!p_sys->b_mute)
    {
        ostatus = FUNC0(p_sys->au_unit,
                                        kHALOutputParam_Volume,
                                        kAudioUnitScope_Global,
                                        0,
                                        volume * volume * volume,
                                        0);
    }

    if (FUNC4(p_aout, "volume-save"))
        FUNC2("auhal-volume", FUNC3(volume * AOUT_VOLUME_DEFAULT));

    return ostatus;
}