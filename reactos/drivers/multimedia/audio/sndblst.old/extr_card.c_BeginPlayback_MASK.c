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
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

VOID FUNC2(ULONG BasePort, ULONG BitDepth, ULONG Channels, ULONG BlockSize)
{
    FUNC0("BeginPlayback(%d, %d, %d, %d)\n", BasePort, BitDepth, Channels, BlockSize);

//    switch(BitDepth)
//    {
//        case 8 :    Command = 0xc0; break;
//        case 16 :   Command = 0xb0; break;  // Make sure we support it
//        default :   Command = 0xc0;
//    }

    FUNC0("Initiating playback\n");

    // TEMPORARY:
    FUNC1(BasePort, 0xc6);
    FUNC1(BasePort, 0); // mode - TEMPORARY
    FUNC1(BasePort, BlockSize % 256);
    FUNC1(BasePort, BlockSize / 256);
}