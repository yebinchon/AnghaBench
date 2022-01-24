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
typedef  int USHORT ;
typedef  int ULONG ;
typedef  int UCHAR ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FALSE ; 
 scalar_t__ SB_DSP_READY ; 
 int /*<<< orphan*/  SB_GET_DSP_VERSION ; 
 scalar_t__ FUNC1 (int) ; 
 int SB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

USHORT FUNC6(ULONG BasePort)
{
    ULONG TimeOut;
    BOOLEAN Status;
    UCHAR DSP_Major, DSP_Minor;

    FUNC0("InitSoundCard() called\n");

    FUNC0("Resetting sound card\n");
//    if (!WaitToSend(BasePort))
//        return FALSE;

    FUNC3(BasePort, 0x01);
    for (TimeOut = 0; TimeOut < 30000; TimeOut ++); // Wait a while
    FUNC3(BasePort, 0x00);

    // Check if it's OK to receive (some cards will ignore the above reset
    // command and so will not issue an ACK, so time out is NOT an error)
    FUNC0("Waiting for an ACK\n");
    if (FUNC4(BasePort))
    {
        // Check to make sure the reset was acknowledged:
        for (TimeOut = SB_TIMEOUT;
             (Status = (FUNC1(BasePort) != SB_DSP_READY) && (TimeOut > 0));
             TimeOut --);
    }

    FUNC0("Querying DSP version\n");
    if (! FUNC5(BasePort))
        return FALSE;

    FUNC2(BasePort, SB_GET_DSP_VERSION);

    if (! FUNC4(BasePort))
        return FALSE;

    DSP_Major = FUNC1(BasePort);
    DSP_Minor = FUNC1(BasePort);

    FUNC0("DSP v%d.%d\n", DSP_Major, DSP_Minor);

    // if audio is disabled,
    // version tests return 0xFF everywhere
    if (DSP_Major == 0xFF && DSP_Minor == 0xFF)
        return FALSE;

    FUNC0("Sound card initialized!\n");

    return (DSP_Major * 256) + DSP_Minor;
}