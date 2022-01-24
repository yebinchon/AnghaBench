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
typedef  scalar_t__ HGLOBAL ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 int GMEM_DISCARDED ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASSED ; 
 int /*<<< orphan*/  SKIPPED ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TEST_STATUS FUNC10()
{
    HGLOBAL     hMem    = 0;
    HGLOBAL     hTest   = 0;
    DWORD       uFlags  = 0;
    TEST_STATUS subtest = SKIPPED;
    TEST_STATUS result  = SKIPPED;

    FUNC4("Testing GlobalDiscard()");
    hMem = FUNC0(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        FUNC7("Allocation handle: ");
        FUNC5(hMem);

        hTest = FUNC1(hMem);
        if (0 == hTest)
        {
            FUNC7("GlobalDiscard returned NULL");
            subtest = FUNC9(subtest, FAILED);
        }
        else
        {
            uFlags = FUNC2(hTest);
            FUNC7("Flags from the new memory block.");
            FUNC6(uFlags);
            if (0 != (uFlags & GMEM_DISCARDED))
            {
                subtest = FUNC9(subtest, PASSED);
            }
            else
            {
                FUNC7("Block is not marked as discardable.");
                subtest = FUNC9(subtest, FAILED);
            }
        }

        FUNC3(hTest);
    }
    else
    {
        FUNC7("GlobalAlloc failed!");
        subtest = FUNC9(subtest, FAILED);
    }

    FUNC7("Result from subtest:");
    FUNC8(subtest);

    result = FUNC9(result, subtest);

    FUNC8(result);
    return result;
}