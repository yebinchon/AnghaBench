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
struct rlimit {int dummy; } ;

/* Variables and functions */
 int _RLIMIT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct rlimit const* const*) ; 
 int FUNC1 (int,struct rlimit const* const) ; 

int FUNC2(const struct rlimit *const *rlim, int *which_failed) {
        int i, r;

        FUNC0(rlim);

        /* On failure returns the limit's index that failed in *which_failed, but only if non-NULL */

        for (i = 0; i < _RLIMIT_MAX; i++) {
                if (!rlim[i])
                        continue;

                r = FUNC1(i, rlim[i]);
                if (r < 0) {
                        if (which_failed)
                                *which_failed = i;

                        return r;
                }
        }

        if (which_failed)
                *which_failed = -1;

        return 0;
}