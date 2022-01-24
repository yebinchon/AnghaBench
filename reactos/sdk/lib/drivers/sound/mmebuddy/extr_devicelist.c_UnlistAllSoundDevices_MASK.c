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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ MMRESULT ;
typedef  scalar_t__ MMDEVICE_TYPE ;

/* Variables and functions */
 scalar_t__ MAX_SOUND_DEVICE_TYPE ; 
 scalar_t__ MIN_SOUND_DEVICE_TYPE ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

VOID
FUNC3()
{
    MMDEVICE_TYPE Type;

    FUNC1(L"Unlisting all sound devices\n");

    for ( Type = MIN_SOUND_DEVICE_TYPE; Type <= MAX_SOUND_DEVICE_TYPE; ++ Type )
    {
        MMRESULT Result;
        Result = FUNC2(Type);
        FUNC0( Result == MMSYSERR_NOERROR );
    }
}