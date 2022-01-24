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
 int /*<<< orphan*/  GMEM_FIXED ; 
 int GMEM_LOCKCOUNT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASSED ; 
 int /*<<< orphan*/  SKIPPED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TEST_STATUS FUNC8()
{
    HGLOBAL     hMem   = 0;
    UINT        uFlags = 0;
    TEST_STATUS result = SKIPPED;

    FUNC5("Testing for correct handling of GMEM_FIXED memory");
    hMem = FUNC0(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        FUNC5("Allocation handle: ");
        FUNC4(hMem);

        FUNC5("Testing initial allocation");
        FUNC5("Testing for non-discarded and lock of 0");
        uFlags = FUNC1(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0) && /*no locks*/
            (((uFlags >> 8) & 0xff) == 0 ))   /*not discarded*/
        {
            result = FUNC7(result, PASSED);
        }
        else
        {
            result = FUNC7(result, FAILED);
        }
        FUNC6(result);

        FUNC5("Pointer from handle: ");
        FUNC4(FUNC3(hMem));
        FUNC5("Testing after a lock");
        FUNC5("Testing for non-discarded and lock of 0");
        uFlags = FUNC1(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0) && /*no locks*/
            (((uFlags >> 8) & 0xff) == 0 ))   /*not discarded*/
        {
            result = FUNC7(result, PASSED);
        }
        else
        {
            result = FUNC7(result, FAILED);
        }
        FUNC6(result);

        FUNC2(hMem);
    }
    else
    {
        FUNC5("GlobalAlloc failed!");
        result = FUNC7(result, FAILED);
    }

    return result;
}