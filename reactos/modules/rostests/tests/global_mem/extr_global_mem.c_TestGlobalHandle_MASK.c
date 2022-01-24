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
typedef  scalar_t__ PVOID ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 int /*<<< orphan*/  GMEM_FIXED ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASSED ; 
 int /*<<< orphan*/  SKIPPED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TEST_STATUS FUNC10()
{
    HGLOBAL     hMem    = 0;
    HGLOBAL     hTest   = 0;
    PVOID       pMem    = 0;
    TEST_STATUS subtest = SKIPPED;
    TEST_STATUS result  = SKIPPED;

    FUNC5("Testing GlobalHandle()");

    FUNC7("Testing GlobalHandle with a block of GMEM_FIXED memory");
    hMem = FUNC0(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        FUNC7("Allocation handle: ");
        FUNC6(hMem);

        hTest = FUNC2(hMem);
        if (hMem == hTest)
        {
            subtest = FUNC9(subtest, PASSED);
        }
        else
        {
            FUNC7("GlobalHandle returned:");
            FUNC6(hTest);
            subtest = FUNC9(subtest, FAILED);
        }

        FUNC1(hMem);
    }
    else
    {
        FUNC7("GlobalAlloc failed!");
        subtest = FUNC9(subtest, FAILED);
    }

    FUNC7("Result from subtest:");
    FUNC8(subtest);
    result = FUNC9(result, subtest);


    subtest = SKIPPED;
    FUNC7("Testing GlobalHandle with a block of GMEM_MOVEABLE memory");
    hMem = FUNC0(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        FUNC7("Allocation handle: ");
        FUNC6(hMem);
        pMem = FUNC3(hMem);
        hTest = FUNC2(pMem);
        if (hMem == hTest)
        {
            subtest = FUNC9(subtest, PASSED);
        }
        else
        {
            FUNC7("GlobalHandle returned:");
            FUNC6(hTest);
            subtest = FUNC9(subtest, FAILED);
        }

        FUNC4(hMem);
        FUNC1(hMem);
    }
    else
    {
        FUNC7("GlobalAlloc failed!");
        subtest = FUNC9(subtest, FAILED);
    }

    FUNC7("Result from subtest:");
    FUNC8(subtest);
    result = FUNC9(result, subtest);


    FUNC7("Global Handle test results:");
    FUNC8(result);
    return result;
}