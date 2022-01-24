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
typedef  int /*<<< orphan*/  TEST_STATUS ;
typedef  scalar_t__ SIZE_T ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 int /*<<< orphan*/  GMEM_FIXED ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASSED ; 
 int /*<<< orphan*/  SKIPPED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TEST_STATUS FUNC8()
{
    HGLOBAL hMem = 0;
    SIZE_T  size = 0;
    TEST_STATUS subtest = SKIPPED;
    TEST_STATUS result  = SKIPPED;
    FUNC3("Testing GlobalSize()");

    FUNC5("Testing GlobalSize with a block of GMEM_FIXED memory");
    hMem = FUNC0(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        size = FUNC2(hMem);
        if (MEM_BLOCK_SIZE <= size)
        {
            subtest = FUNC7(subtest, PASSED);
        }
        else
        {
            FUNC5("GlobalSize returned:");
            FUNC4(size);
            subtest = FUNC7(subtest, FAILED);
        }

        FUNC1(hMem);
    }
    else
    {
        FUNC5("GlobalAlloc failed!");
        subtest = FUNC7(subtest, FAILED);
    }

    FUNC5("Result from subtest:");
    FUNC6(subtest);
    result = FUNC7(result, subtest);

    FUNC5("Testing GlobalSize with a block of GMEM_MOVEABLE memory");
    hMem = FUNC0(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        size = FUNC2(hMem);
        if (MEM_BLOCK_SIZE <= size)
        {
            subtest = FUNC7(subtest, PASSED);
        }
        else
        {
            FUNC5("GlobalSize returned:");
            FUNC4(size);
            subtest = FUNC7(subtest, FAILED);
        }

        FUNC1(hMem);
    }
    else
    {
        FUNC5("GlobalAlloc failed!");
        subtest = FUNC7(subtest, FAILED);
    }

    FUNC5("Result from subtest:");
    FUNC6(subtest);
    result = FUNC7(result, subtest);

    FUNC5("Testing GlobalSize with discarded memory");
    hMem = FUNC0(GMEM_MOVEABLE, 0);
    if (0 != hMem)
    {
        size = FUNC2(hMem);
        if (0 == size)
        {
            subtest = FUNC7(subtest, PASSED);
        }
        else
        {
            FUNC5("GlobalSize returned:");
            FUNC4(size);
            subtest = FUNC7(subtest, FAILED);
        }

        FUNC1(hMem);
    }
    else
    {
        FUNC5("GlobalAlloc failed!");
        subtest = FUNC7(subtest, FAILED);
    }

    FUNC5("Result from subtest:");
    FUNC6(subtest);
    result = FUNC7(result, subtest);

    FUNC5("Test result:");
    FUNC6(result);
    return result;
}