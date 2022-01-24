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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MPU401_TIMEOUT ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC2(ULONG BasePort)
{
    int TimeOut;

    FUNC0("WaitToSend ");

    // Check if it's OK to send
    for (TimeOut = MPU401_TIMEOUT;
         ! FUNC1(BasePort) && TimeOut > 0;
         TimeOut --);

    // If a time-out occurs, we report failure
    if (! TimeOut)
    {
        FUNC0("FAILED\n");
        return FALSE;
    }

    FUNC0("SUCCEEDED\n");

    return TRUE;
}