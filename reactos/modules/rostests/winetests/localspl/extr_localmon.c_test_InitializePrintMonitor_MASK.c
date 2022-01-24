#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwMonitorSize; } ;
typedef  int /*<<< orphan*/  MONITOR ;
typedef  TYPE_1__* LPMONITOREX ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * Monitors_LocalPortW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * emptyW ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* pm ; 

__attribute__((used)) static void FUNC4(void)
{
    LPMONITOREX res;

    if (!&pInitializePrintMonitor) return;

    FUNC1(0xdeadbeef);
    res = FUNC3(NULL);
    /* The Parameter was unchecked before w2k */
    FUNC2( res || (FUNC0() == ERROR_INVALID_PARAMETER),
        "returned %p with %u\n (expected '!= NULL' or: NULL with "
        "ERROR_INVALID_PARAMETER)\n", res, FUNC0());

    FUNC1(0xdeadbeef);
    res = FUNC3(emptyW);
    FUNC2( res || (FUNC0() == ERROR_INVALID_PARAMETER),
        "returned %p with %u\n (expected '!= NULL' or: NULL with "
        "ERROR_INVALID_PARAMETER)\n", res, FUNC0());

    /* Every call with a non-empty string returns the same Pointer */
    FUNC1(0xdeadbeef);
    res = FUNC3(Monitors_LocalPortW);
    FUNC2( res == pm,
        "returned %p with %u (expected %p)\n", res, FUNC0(), pm);
    FUNC2(res->dwMonitorSize == sizeof(MONITOR), "wrong dwMonitorSize %u\n", res->dwMonitorSize);
}