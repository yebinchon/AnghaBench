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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PASSED ; 
 int /*<<< orphan*/  SKIPPED ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

TEST_STATUS FUNC11()
{
    HGLOBAL     hMem       = 0;
    HGLOBAL     hReAlloced = 0;
    LPVOID      pMem       = 0;
    TEST_STATUS subtest    = SKIPPED;
    TEST_STATUS result     = SKIPPED;

    FUNC6("Testing GlobalReAlloc() on memory allocated as GMGM_MOVEABLE");

    /* case 1 test reallocing a movable block that is unlocked. */
    FUNC6("Allocating buffer");
    hMem = FUNC0(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        FUNC6("Testing GlobalReAlloc on a unlocked block.");
        hReAlloced = FUNC3(hMem, MEM_BLOCK_SIZE - 100, 0);
        if (0 == hReAlloced)
        {
            FUNC6("GlobalReAlloc failed-- returned NULL");
            subtest = FUNC8(subtest, FAILED);
            FUNC7(subtest);
        }
        else
        {
            FUNC6("Alloced Handle: ");
            FUNC5(hMem);
            FUNC6("ReAlloced Handle: ");
            FUNC5(hReAlloced);

            pMem = FUNC2(hReAlloced);
            hMem = hReAlloced;
            subtest = FUNC8(subtest, PASSED);
            subtest = FUNC8(subtest, FUNC9(pMem, MEM_BLOCK_SIZE - 100));
            subtest = FUNC8(subtest, FUNC10(pMem, MEM_BLOCK_SIZE - 100));
            FUNC4(hReAlloced);
        }

        FUNC1(hMem);
    }
    else
    {
        subtest = FUNC8(subtest, FAILED);
    }
    FUNC6("Subtest result:");
    FUNC7(subtest);
    FUNC6("");

    result = FUNC8(result, subtest);
    subtest = SKIPPED;

    /* Case 2: re-allocate a moveable block that is locked */
    FUNC6("Allocating buffer");
    hMem = FUNC0(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        FUNC6("Testing GlobalReAlloc on a locked block.");
        pMem = FUNC2(hMem);
        hReAlloced = FUNC3(hMem, MEM_BLOCK_SIZE - 100, 0);
        if (0 == hReAlloced)
        {
            FUNC6("GlobalReAlloc failed-- returned NULL");
            subtest = FUNC8(subtest, FAILED);
            FUNC7(subtest);
        }
        else
        {
            FUNC6("Alloced Handle: ");
            FUNC5(hMem);
            FUNC6("ReAlloced Handle: ");
            FUNC5(hReAlloced);
            if (hMem != hReAlloced)
            {
                FUNC6("GlobalReAlloc returned a different block.");
            }
            pMem = FUNC2(hReAlloced);
            subtest = FUNC8(subtest, PASSED);
            subtest = FUNC8(subtest, FUNC9(pMem, MEM_BLOCK_SIZE - 100));
            subtest = FUNC8(subtest, FUNC10(pMem , MEM_BLOCK_SIZE - 100));
            FUNC4(hReAlloced);

        }

        FUNC4(hMem);

        FUNC1(hMem);
    }
    else
    {
        subtest = FUNC8(subtest, FAILED);
    }
    FUNC6("Subtest result:");
    FUNC7(subtest);
    FUNC6("");

    result = FUNC8(result, subtest);

    FUNC6("");
    return result;
}