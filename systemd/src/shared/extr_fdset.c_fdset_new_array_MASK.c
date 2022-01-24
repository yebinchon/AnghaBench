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
typedef  int /*<<< orphan*/  FDSet ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(FDSet **ret, const int *fds, size_t n_fds) {
        size_t i;
        FDSet *s;
        int r;

        FUNC1(ret);

        s = FUNC2();
        if (!s)
                return -ENOMEM;

        for (i = 0; i < n_fds; i++) {

                r = FUNC3(s, fds[i]);
                if (r < 0) {
                        FUNC4(FUNC0(s));
                        return r;
                }
        }

        *ret = s;
        return 0;
}