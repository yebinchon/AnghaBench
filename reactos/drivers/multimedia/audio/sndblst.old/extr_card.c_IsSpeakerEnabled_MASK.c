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
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FALSE ; 
 int /*<<< orphan*/  SB_GET_SPEAKER_STATUS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC4(ULONG BasePort)
{
    FUNC0("Obtaining speaker status\n");

//    if (! WaitToSend(BasePort))
//        return FALSE;

    FUNC2(BasePort, SB_GET_SPEAKER_STATUS);
    if (! FUNC3(BasePort))
        return FALSE;

    return FUNC1(BasePort) == 0xff;
}