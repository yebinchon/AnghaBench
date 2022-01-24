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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int argc, char *argv[]) {
        int r;

        FUNC4();
        FUNC3();

        if (argc > 1) {
                FUNC1("This program takes no arguments.");
                return EXIT_FAILURE;
        }

        r = FUNC0();
        if (r < 0)
                FUNC2(r, "Failed to load environment.d: %m");

        return r < 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}