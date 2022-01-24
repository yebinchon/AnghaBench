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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

void FUNC16(void)
{
    FUNC1((0,"CleanUpPICE(): trace step 1\n"));
	FUNC11();

    FUNC1((0,"CleanUpPICE(): trace step 2\n"));
    // de-install all hooks
    FUNC4();
    FUNC8();
    FUNC5();
    FUNC7();
    FUNC2();
    FUNC3();
    FUNC6();
    FUNC9();

    FUNC1((0,"CleanUpPICE(): trace step 3\n"));
    FUNC12();

    FUNC1((0,"CleanUpPICE(): trace step 4\n"));
    FUNC14(); // don't use ScanExports() after this
    FUNC15();

    FUNC1((0,"CleanUpPICE(): trace step 5\n"));
    // restore patch of keyboard driver
    FUNC13();

    FUNC1((0,"CleanUpPICE(): trace step 6\n"));
    FUNC10(OUTPUT_WINDOW,"pICE: shutting down...\n");

    FUNC1((0,"CleanUpPICE(): trace step 7\n"));
    // cleanup the console
	FUNC0();
}