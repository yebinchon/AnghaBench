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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  TEST_STATUS ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASSED ; 
 int /*<<< orphan*/  SKIPPED ; 

TEST_STATUS FUNC6(UINT allocFlags)
{
    TEST_STATUS status = SKIPPED;
    HGLOBAL hTest = 0;
    FUNC2("Testing the GlobalAlloc and GlobalFree calls");
    FUNC3("Allocate a buffer");

    FUNC5(allocFlags);

    status = FAILED;
    hTest = FUNC0(allocFlags, MEM_BLOCK_SIZE);
    if (0 != hTest)
    {
        if (0 == FUNC1(hTest))
        {
            status = PASSED;
        }
    }

    FUNC3("Result for this run:");
    FUNC4(status);
    FUNC3("");

    return status;
}