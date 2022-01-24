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
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ERROR_INVALID_HANDLE ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hCBT_hook ; 
 scalar_t__ hEvent_hook ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  sequence_cs ; 

__attribute__((used)) static void FUNC6()
{
    BOOL ret;
    FUNC3(hCBT_hook);
    if (&pUnhookWinEvent && hEvent_hook)
    {
        ret = FUNC5(hEvent_hook);
        FUNC4( ret, "UnhookWinEvent error %d\n", FUNC1());
        FUNC2(0xdeadbeef);
        FUNC4(!FUNC5(hEvent_hook), "UnhookWinEvent succeeded\n");
        FUNC4(FUNC1() == ERROR_INVALID_HANDLE || /* Win2k */
           FUNC1() == 0xdeadbeef, /* Win9x */
           "unexpected error %d\n", FUNC1());
    }
    FUNC0( &sequence_cs );

}