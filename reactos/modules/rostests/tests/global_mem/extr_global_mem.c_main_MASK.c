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

/* Variables and functions */
 scalar_t__ FAILED ; 
 int /*<<< orphan*/  GHND ; 
 int /*<<< orphan*/  GMEM_FIXED ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  GPTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ SKIPPED ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(int argc, char ** argv)
{
    TEST_STATUS test_set = SKIPPED;
    FUNC0("Testing GlobalXXX memory management functions.");

    test_set = FUNC3(test_set, FUNC4(GPTR));
    test_set = FUNC3(test_set, FUNC4(GHND));
    test_set = FUNC3(test_set, FUNC4(GMEM_FIXED));
    test_set = FUNC3(test_set, FUNC4(GMEM_MOVEABLE));

    if (FAILED == test_set)
    {
        FUNC1("Skipping any further tests.  GlobalAlloc/Free fails.");
        FUNC2(test_set);
        return test_set;
    }

    test_set = FUNC3(test_set, FUNC8(GPTR));
    test_set = FUNC3(test_set, FUNC8(GHND));
    test_set = FUNC3(test_set, FUNC8(GMEM_FIXED));
    test_set = FUNC3(test_set, FUNC8(GMEM_MOVEABLE));

    test_set = FUNC3(test_set, FUNC9());

    test_set = FUNC3(test_set, FUNC6());

    test_set = FUNC3(test_set, FUNC7());

    test_set = FUNC3(test_set, FUNC10());

    test_set = FUNC3(test_set, FUNC5());

    /* output the result for the entire set of tests*/
    FUNC0("Test suite result");
    FUNC2(test_set);
    return test_set;
}