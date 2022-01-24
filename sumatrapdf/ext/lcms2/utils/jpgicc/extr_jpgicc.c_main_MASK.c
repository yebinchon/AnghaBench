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
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ Verbose ; 
 int /*<<< orphan*/  cInpProf ; 
 int /*<<< orphan*/  cOutProf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int xoptind ; 

int FUNC9(int argc, char* argv[])
{
    FUNC3(NULL, "jpgicc");

    FUNC1(argc, argv);

    if ((argc - xoptind) != 2) {
        FUNC2(0);
    }

    FUNC4(argv[xoptind]);
    FUNC5(argv[xoptind+1]);

    FUNC6(cInpProf, cOutProf);


    if (Verbose) { FUNC8(stdout, "\n"); FUNC7(stdout); }

    FUNC0();

    return 0;
}