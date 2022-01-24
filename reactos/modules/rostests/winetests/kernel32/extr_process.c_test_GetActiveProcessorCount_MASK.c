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
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD count;

    if (!&pGetActiveProcessorCount)
    {
        FUNC4("GetActiveProcessorCount not available, skipping test\n");
        return;
    }

    count = FUNC3(0);
    FUNC2(count, "GetActiveProcessorCount failed, error %u\n", FUNC0());

    /* Test would fail on systems with more than 6400 processors */
    FUNC1(0xdeadbeef);
    count = FUNC3(101);
    FUNC2(count == 0, "Expeced GetActiveProcessorCount to fail\n");
    FUNC2(FUNC0() == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %u\n", FUNC0());
}