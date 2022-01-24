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
 scalar_t__ arg_verbose ; 
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(int argc, char *argv[]) {
        int r;

        /* This is mostly intended to be used for scripts which want
         * to detect whether AC power is plugged in or not. */

        FUNC2();
        FUNC1();

        r = FUNC4(argc, argv);
        if (r <= 0)
                return r;

        r = FUNC3();
        if (r < 0)
                return FUNC0(r, "Failed to read AC status: %m");

        if (arg_verbose)
                FUNC5(FUNC6(r));

        return r == 0;
}