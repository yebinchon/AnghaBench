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
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  AudioUnit ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ noErr ; 

void
FUNC3(audio_output_t *p_aout, AudioUnit au)
{
    OSStatus err = FUNC0(au);
    if (err != noErr)
        FUNC1("AudioUnitUninitialize failed");

    FUNC2(p_aout);
}