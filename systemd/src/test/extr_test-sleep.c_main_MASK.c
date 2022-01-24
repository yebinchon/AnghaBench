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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(int argc, char* argv[]) {
        int i, r = 0, k;

        FUNC5(LOG_DEBUG);

        if (FUNC1() != 0)
                FUNC2("This program is unlikely to work for unprivileged users");

        FUNC4();
        FUNC6();

        if (argc <= 1)
                FUNC0(FUNC3(argv[0]) == 0);
        else
                for (i = 1; i < argc; i++) {
                        k = FUNC3(argv[i]);
                        if (r == 0)
                                r = k;
                }

        return r;
}