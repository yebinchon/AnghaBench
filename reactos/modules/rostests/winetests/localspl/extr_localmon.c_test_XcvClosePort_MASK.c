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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  SERVER_ACCESS_ADMINISTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  emptyW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD   res;
    HANDLE hXcv2;


    if (0)
    {
        /* crash with native localspl.dll (w2k+xp) */
        FUNC3(NULL);
        FUNC3(INVALID_HANDLE_VALUE);
    }


    FUNC1(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = FUNC4(emptyW, SERVER_ACCESS_ADMINISTER, &hXcv2);
    FUNC2(res, "returned %d with %u and %p (expected '!= 0')\n", res, FUNC0(), hXcv2);

    if (res) {
        FUNC1(0xdeadbeef);
        res = FUNC3(hXcv2);
        FUNC2(res, "returned %d with %u (expected '!= 0')\n", res, FUNC0());

        if (0)
        {
            /* test for "Double Free": crash with native localspl.dll (w2k+xp) */
            FUNC3(hXcv2);
        }
    }
}