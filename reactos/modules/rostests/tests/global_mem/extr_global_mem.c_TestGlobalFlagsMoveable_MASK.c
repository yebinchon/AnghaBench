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
typedef  int UINT ;
typedef  int /*<<< orphan*/  TEST_STATUS ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 int GMEM_DISCARDED ; 
 int GMEM_LOCKCOUNT ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASSED ; 
 int /*<<< orphan*/  SKIPPED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TEST_STATUS FUNC10()
{
    HGLOBAL     hMem   = 0;
    UINT        uFlags = 0;
    TEST_STATUS result = SKIPPED;

    FUNC7("Test for the proper lock count");

    hMem = FUNC0(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        FUNC7("Testing initial allocation");

        FUNC7("Testing for a lock of 0");
        uFlags = FUNC1(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0)) /*no locks*/
        {
            result = FUNC9(result, PASSED);
        }
        else
        {
            result = FUNC9(result, FAILED);
        }
        FUNC8(result);

        FUNC7("Pointer from handle: ");
        FUNC5(FUNC3(hMem));

        FUNC7("Testing after a lock");
        FUNC7("Testing for a lock of 1");
        uFlags = FUNC1(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 1)) /*no locks*/
        {
            result = FUNC9(result, PASSED);
        }
        else
        {
            result = FUNC9(result, FAILED);
        }
        FUNC8(result);

        FUNC4(hMem);
        FUNC7("Testing after an unlock");
        FUNC7("Testing for a lock of 0");
        uFlags = FUNC1(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0)) /*no locks*/
        {
            result = FUNC9(result, PASSED);
        }
        else
        {
            result = FUNC9(result, FAILED);
        }
        FUNC8(result);
    }
    else
    {
        FUNC7("GlobalAlloc failed!");
        result = FUNC9(result, FAILED);
    }

    FUNC7("Test for discarded memory");
    FUNC7("Allocating an empty moveable block---automatically marked as discarded");
    hMem = FUNC0(GMEM_MOVEABLE, 0); /*allocate a discarded block*/
    if (0 != hMem)
    {
        FUNC7("Allocation handle: ");
        FUNC5(hMem);
        FUNC7("Testing for a discarded flag");
        uFlags = FUNC1(hMem);
        if (0 != (uFlags & GMEM_DISCARDED)) /*discarded*/
        {
            result = FUNC9(result, PASSED);
        }
        else
        {
            result = FUNC9(result, FAILED);
        }
        FUNC7("Flags:");
        FUNC6(uFlags);
        FUNC8(result);

        FUNC2(hMem);
    }
    else
    {
        FUNC7("GlobalAlloc failed!");
        result = FUNC9(result, FAILED);
    }
    return result;
}