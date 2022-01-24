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
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int SIZE_MAX ; 
 int errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(void) {
        size_t n = 16;
        int r;

        for (;;) {
                cpu_set_t *c;

                c = FUNC0(n);
                if (!c)
                        return -ENOMEM;

                if (FUNC4(0, FUNC1(n), c) >= 0) {
                        int k;

                        k = FUNC2(FUNC1(n), c);
                        FUNC3(c);

                        if (k <= 0)
                                return -EINVAL;

                        return k;
                }

                r = -errno;
                FUNC3(c);

                if (r != -EINVAL)
                        return r;
                if (n > SIZE_MAX/2)
                        return -ENOMEM;
                n *= 2;
        }
}