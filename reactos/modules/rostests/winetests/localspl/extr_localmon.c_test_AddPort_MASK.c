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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * does_not_existW ; 
 int /*<<< orphan*/ * emptyW ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD   res;

    /* moved to localui.dll since w2k */
    if (!&pAddPort) return;

    if (0)
    {
        /* NT4 crash on this test */
        FUNC3(NULL, 0, NULL);
    }

    /*  Testing-Results (localmon.dll from NT4.0):
        - The Servername is ignored
        - Case of MonitorName is ignored
    */

    FUNC1(0xdeadbeef);
    res = FUNC3(NULL, 0, emptyW);
    FUNC2(!res, "returned %d with %u (expected '0')\n", res, FUNC0());

    FUNC1(0xdeadbeef);
    res = FUNC3(NULL, 0, does_not_existW);
    FUNC2(!res, "returned %d with %u (expected '0')\n", res, FUNC0());

}