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
 int EINVAL ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 double FUNC1 (double) ; 
 int FUNC2 (char*,double*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 double FUNC4 (char*,char**) ; 

__attribute__((used)) static void FUNC5(void) {
        int r;
        double d;
        char *e;

        r = FUNC2("junk", &d);
        FUNC0(r == -EINVAL);

        r = FUNC2("0.2244", &d);
        FUNC0(r == 0);
        FUNC0(FUNC1(d - 0.2244) < 0.000001);

        r = FUNC2("0,5", &d);
        FUNC0(r == -EINVAL);

        errno = 0;
        FUNC4("0,5", &e);
        FUNC0(*e == ',');

        r = FUNC2("", &d);
        FUNC0(r == -EINVAL);

        /* Check if this really is locale independent */
        if (FUNC3(LC_NUMERIC, "de_DE.utf8")) {

                r = FUNC2("0.2244", &d);
                FUNC0(r == 0);
                FUNC0(FUNC1(d - 0.2244) < 0.000001);

                r = FUNC2("0,5", &d);
                FUNC0(r == -EINVAL);

                errno = 0;
                FUNC0(FUNC1(FUNC4("0,5", &e) - 0.5) < 0.00001);

                r = FUNC2("", &d);
                FUNC0(r == -EINVAL);
        }

        /* And check again, reset */
        FUNC0(FUNC3(LC_NUMERIC, "C"));

        r = FUNC2("0.2244", &d);
        FUNC0(r == 0);
        FUNC0(FUNC1(d - 0.2244) < 0.000001);

        r = FUNC2("0,5", &d);
        FUNC0(r == -EINVAL);

        errno = 0;
        FUNC4("0,5", &e);
        FUNC0(*e == ',');

        r = FUNC2("", &d);
        FUNC0(r == -EINVAL);
}