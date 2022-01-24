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
typedef  size_t UCHAR ;
typedef  int /*<<< orphan*/  MMRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** EntrypointMutexes ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
 size_t SOUND_DEVICE_TYPES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

MMRESULT
FUNC4()
{
    UCHAR i;
    MMRESULT Result = MMSYSERR_NOERROR;

    /* Blank all entries ni the table first */
    for ( i = 0; i < SOUND_DEVICE_TYPES; ++ i )
    {
        EntrypointMutexes[i] = NULL;
    }

    /* Now create the mutexes */
    for ( i = 0; i < SOUND_DEVICE_TYPES; ++ i )
    {
        EntrypointMutexes[i] = FUNC1(NULL, FALSE, NULL);

        if ( ! EntrypointMutexes[i] )
        {
            Result = FUNC3(FUNC2());

            /* Clean up any mutexes we successfully created */
            FUNC0();
            break;
        }
    }

    return Result;
}