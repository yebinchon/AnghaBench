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
typedef  int /*<<< orphan*/  audio_output_t ;
struct TYPE_3__ {int /*<<< orphan*/  componentFlagsMask; int /*<<< orphan*/  componentFlags; int /*<<< orphan*/  componentManufacturer; int /*<<< orphan*/  componentSubType; int /*<<< orphan*/  componentType; } ;
typedef  int /*<<< orphan*/  OSType ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/ * AudioUnit ;
typedef  TYPE_1__ AudioComponentDescription ;
typedef  int /*<<< orphan*/ * AudioComponent ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  kAudioUnitManufacturer_Apple ; 
 int /*<<< orphan*/  kAudioUnitType_Output ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ noErr ; 

AudioUnit
FUNC4(audio_output_t *p_aout, OSType comp_sub_type)
{
    AudioComponentDescription desc = {
        .componentType = kAudioUnitType_Output,
        .componentSubType = comp_sub_type,
        .componentManufacturer = kAudioUnitManufacturer_Apple,
        .componentFlags = 0,
        .componentFlagsMask = 0,
    };

    AudioComponent au_component;
    au_component = FUNC0(NULL, &desc);
    if (au_component == NULL)
    {
        FUNC3(p_aout, "cannot find any AudioComponent, PCM output failed");
        return NULL;
    }

    AudioUnit au;
    OSStatus err = FUNC1(au_component, &au);
    if (err != noErr)
    {
        FUNC2("cannot open AudioComponent, PCM output failed");
        return NULL;
    }
    return au;
}