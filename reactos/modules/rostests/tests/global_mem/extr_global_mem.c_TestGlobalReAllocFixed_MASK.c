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
typedef  scalar_t__ TEST_STATUS ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ HGLOBAL ;

/* Variables and functions */
 scalar_t__ FAILED ; 
 int /*<<< orphan*/  GMEM_FIXED ; 
 int GMEM_MODIFY ; 
 int GMEM_MOVEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ MEM_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ PASSED ; 
 scalar_t__ SKIPPED ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

TEST_STATUS FUNC12()
{
    HGLOBAL     hMem       = 0;
    HGLOBAL     hReAlloced = 0;
    LPVOID      pMem       = 0;
    TEST_STATUS subtest    = SKIPPED;
    TEST_STATUS result     = SKIPPED;

    FUNC7("Testing GlobalReAlloc() on memory allocated as GMEM_FIXED");

    /* Case 1: convert a fixed block to a movable block. */
    FUNC7("Allocating buffer");
    hMem = FUNC0(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        FUNC7("Testing to see if this is converted into a movable block");
        hReAlloced = FUNC3(hMem, MEM_BLOCK_SIZE + 100, GMEM_MOVEABLE | GMEM_MODIFY);
        if (0 == hReAlloced)
        {
            FUNC7("GlobalReAlloc failed-- returned NULL");
            subtest = FUNC9(subtest, FAILED);
            FUNC8(subtest);
        }
        else
        {
            hMem = hReAlloced;
            if (0 == FUNC5(hMem))
            {
                FUNC7("GlobalReAlloc returned a fixed pointer.");
                subtest = FUNC9(subtest, FAILED);
                FUNC8(subtest);
            }
            else
            {
                pMem = FUNC2(hMem);
                subtest = FUNC9(subtest, PASSED);
                subtest = FUNC9(subtest, FUNC10(pMem, MEM_BLOCK_SIZE + 100));
                if (FAILED == subtest)
                {
                    FUNC7("Memory Read failed.");
                }
                subtest = FUNC9(subtest, FUNC11(pMem, MEM_BLOCK_SIZE + 100));
                if (FAILED == subtest)
                {
                    FUNC7("Memory Write failed.");
                }
                FUNC4(hMem);
            }
        }

        FUNC1(hMem);
    }
    else
    {
        FUNC7("Global Alloc Failed.");
        subtest = FUNC9(subtest, FAILED);
    }
    FUNC7("Subtest result:");
    FUNC8(subtest);
    FUNC7("");

    result = FUNC9(result, subtest);
    subtest = SKIPPED;

    /* case 2 only move a fixed block */
    FUNC7("Allocating buffer");
    hMem = FUNC0(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        FUNC7("Testing to see if a new fixed block is returned.");
        hReAlloced = FUNC3(hMem, MEM_BLOCK_SIZE - 100, GMEM_MOVEABLE);
        if (0 == hReAlloced)
        {
            FUNC7("GlobalReAlloc failed-- returned NULL");
            subtest = FUNC9(subtest, FAILED);
            FUNC8(subtest);
        }
        else
        {
            FUNC7("Alloced Handle: ");
            FUNC6(hMem);
            FUNC7("ReAlloced Handle: ");
            FUNC6(hReAlloced);
            if (hMem == hReAlloced)
            {
                FUNC7("GlobalReAlloc returned the same pointer.  The documentation states that this is wrong, but Windows NT works this way.");
            }

            hMem = hReAlloced;
            subtest = FUNC9(subtest, PASSED);
            subtest = FUNC9(subtest, FUNC10((LPVOID)hMem, MEM_BLOCK_SIZE - 100));
            subtest = FUNC9(subtest, FUNC11((LPVOID)hMem, MEM_BLOCK_SIZE - 100));
        }

        FUNC1(hMem);
    }
    else
    {
        subtest = FUNC9(subtest, FAILED);
    }
    FUNC7("Subtest result:");
    FUNC8(subtest);
    FUNC7("");

    result = FUNC9(result, subtest);
    subtest = SKIPPED;

    /* Case 3: re-allocate a fixed block in place */
    FUNC7("Allocating buffer");
    hMem = FUNC0(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        FUNC7("Testing to see if a fixed pointer is reallocated in place.");
        hReAlloced = FUNC3(hMem, MEM_BLOCK_SIZE - 100, 0);
        if (0 == hReAlloced)
        {
            FUNC7("GlobalReAlloc failed-- returned NULL");
            subtest = FUNC9(subtest, FAILED);
            FUNC8(subtest);
        }
        else
        {
            FUNC7("Alloced Handle: ");
            FUNC6(hMem);
            FUNC7("ReAlloced Handle: ");
            FUNC6(hReAlloced);
            if (hMem != hReAlloced)
            {
                FUNC7("GlobalReAlloc returned a different.");
                subtest = FUNC9(subtest, FAILED);
                FUNC8(subtest);
            }
            else
            {
                subtest = FUNC9(subtest, PASSED);
                subtest = FUNC9(subtest, FUNC10((LPVOID)hMem, MEM_BLOCK_SIZE - 100));
                subtest = FUNC9(subtest, FUNC11((LPVOID)hMem, MEM_BLOCK_SIZE - 100));
            }
        }

        FUNC1(hMem);
    }
    else
    {
        subtest = FUNC9(subtest, FAILED);
    }
    FUNC7("Subtest result:");
    FUNC8(subtest);
    FUNC7("");

    result = FUNC9(result, subtest);

    FUNC7("");
    return result;
}