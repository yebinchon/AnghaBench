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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SERVER_ACCESS_ADMINISTER ; 
 int /*<<< orphan*/  SERVER_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * emptyW ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * portname_fileW ; 
 int /*<<< orphan*/ * portname_lpt1W ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD   res;
    HANDLE  hXcv2;


    if (0)
    {
        /* crash with native localspl.dll (w2k+xp) */
        FUNC4(NULL, SERVER_ACCESS_ADMINISTER, &hXcv2);
        FUNC4(emptyW, SERVER_ACCESS_ADMINISTER, NULL);
    }


    /* The returned handle is the result from a previous "spoolss.dll,DllAllocSplMem" */
    FUNC1(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = FUNC4(emptyW, SERVER_ACCESS_ADMINISTER, &hXcv2);
    FUNC2(res, "returned %d with %u and %p (expected '!= 0')\n", res, FUNC0(), hXcv2);
    if (res) FUNC3(hXcv2);


    /* The ACCESS_MASK is not checked in XcvOpenPort */
    FUNC1(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = FUNC4(emptyW, 0, &hXcv2);
    FUNC2(res, "returned %d with %u and %p (expected '!= 0')\n", res, FUNC0(), hXcv2);
    if (res) FUNC3(hXcv2);


    /* A copy of pszObject is saved in the Memory-Block */
    FUNC1(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = FUNC4(portname_lpt1W, SERVER_ALL_ACCESS, &hXcv2);
    FUNC2(res, "returned %d with %u and %p (expected '!= 0')\n", res, FUNC0(), hXcv2);
    if (res) FUNC3(hXcv2);

    FUNC1(0xdeadbeef);
    hXcv2 = (HANDLE) 0xdeadbeef;
    res = FUNC4(portname_fileW, SERVER_ALL_ACCESS, &hXcv2);
    FUNC2(res, "returned %d with %u and %p (expected '!= 0')\n", res, FUNC0(), hXcv2);
    if (res) FUNC3(hXcv2);

}