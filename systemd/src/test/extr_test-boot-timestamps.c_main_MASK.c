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
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int argc, char* argv[]) {
        int p, q, r;

        FUNC5(LOG_DEBUG);

        p = FUNC2();
        FUNC0(p >= 0);
        q = FUNC4();
        FUNC0(q >= 0);
        r = FUNC3();
        FUNC0(r >= 0);

        if (p == 0 && q == 0 && r == 0)
                return FUNC1("access to firmware variables not possible");

        return EXIT_SUCCESS;
}