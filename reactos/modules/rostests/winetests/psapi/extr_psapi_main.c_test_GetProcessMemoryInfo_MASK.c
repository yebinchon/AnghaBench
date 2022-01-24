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
typedef  int /*<<< orphan*/  pmc ;
typedef  int /*<<< orphan*/  PROCESS_MEMORY_COUNTERS ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * hpQI ; 
 int /*<<< orphan*/ * hpSR ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    PROCESS_MEMORY_COUNTERS pmc;
    DWORD ret;

    FUNC2(0xdeadbeef);
    ret = FUNC1(NULL, &pmc, sizeof(pmc));
    FUNC3(!ret, "GetProcessMemoryInfo should fail\n");
    FUNC3(FUNC0() == ERROR_INVALID_HANDLE, "expected error=ERROR_INVALID_HANDLE but got %d\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC1(hpSR, &pmc, sizeof(pmc));
    FUNC3(!ret, "GetProcessMemoryInfo should fail\n");
    FUNC3(FUNC0() == ERROR_ACCESS_DENIED, "expected error=ERROR_ACCESS_DENIED but got %d\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC1(hpQI, &pmc, sizeof(pmc)-1);
    FUNC3(!ret, "GetProcessMemoryInfo should fail\n");
    FUNC3(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "expected error=ERROR_INSUFFICIENT_BUFFER but got %d\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC1(hpQI, &pmc, sizeof(pmc));
    FUNC3(ret == 1, "failed with %d\n", FUNC0());
}