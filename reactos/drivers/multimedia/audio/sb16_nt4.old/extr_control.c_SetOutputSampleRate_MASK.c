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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  PSOUND_BLASTER_PARAMETERS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SbSetOutputRate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN
FUNC2(
    PSOUND_BLASTER_PARAMETERS SBDevice,
    ULONG SampleRate)
{
    /* Only works for DSP v4.xx */
    FUNC0("Setting sample rate\n");

    FUNC1(SBDevice, SbSetOutputRate);
    FUNC1(SBDevice, SampleRate / 256);
    FUNC1(SBDevice, SampleRate % 256);

    return TRUE;
}