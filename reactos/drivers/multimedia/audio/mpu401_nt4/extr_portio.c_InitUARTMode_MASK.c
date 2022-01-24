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
typedef  scalar_t__ ULONG ;
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ MPU401_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

BOOLEAN FUNC5(ULONG BasePort)
{
    ULONG TimeOut;
    UCHAR Status = 0;

    FUNC0("InitUARTMode() called\n");

    // Check if it's OK to send
    if (! FUNC4(BasePort))
        return FALSE;

    FUNC0("Resetting MPU401\n");

    // Send an MPU reset:
    FUNC2(BasePort, 0xff);

    // Check if it's OK to receive (some cards will ignore the above reset
    // command and so will not issue an ACK, so time out is NOT an error)
    FUNC0("Waiting for an ACK\n");
    if (FUNC3(BasePort))
    {
        // Check to make sure the reset was acknowledged:
        for (TimeOut = MPU401_TIMEOUT;
             (Status = (FUNC1(BasePort) & 0xfe) && TimeOut > 0);
             TimeOut --);
    }

    FUNC0("Entering UART mode\n");
    // Now we kick the MPU401 into UART ("dumb") mode
    FUNC2(BasePort, 0x3f);

    return TRUE;
}