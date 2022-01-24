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
 int /*<<< orphan*/  LC_ALL ; 
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(int argc, char *argv[]) {
        int r;

        FUNC4(LC_ALL, "");
        FUNC2();
        FUNC1();

        r = FUNC3(argc, argv);
        if (r <= 0)
                goto finish;

        r = FUNC0(argc, argv);

finish:
        return r < 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}