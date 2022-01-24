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
typedef  size_t UCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** EntrypointMutexes ; 
 size_t SOUND_DEVICE_TYPES ; 

VOID
FUNC1()
{
    UCHAR i;

    /* Only clean up a mutex if it actually exists */
    for ( i = 0; i < SOUND_DEVICE_TYPES; ++ i )
    {
        if ( EntrypointMutexes[i] )
        {
            FUNC0(EntrypointMutexes[i]);
            EntrypointMutexes[i] = NULL;
        }
    }
}