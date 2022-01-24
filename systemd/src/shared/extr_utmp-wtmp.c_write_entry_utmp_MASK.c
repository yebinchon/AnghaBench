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
struct utmpx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_UTMPX ; 
 int /*<<< orphan*/  FUNC0 (struct utmpx const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct utmpx const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct utmpx *store) {
        int r;

        FUNC0(store);

        /* utmp is similar to wtmp, but there is only one entry for
         * each entry type resp. user; i.e. basically a key/value
         * table. */

        if (FUNC4(_PATH_UTMPX) < 0)
                return -errno;

        FUNC3();

        if (!FUNC2(store))
                r = -errno;
        else
                r = 0;

        FUNC1();

        return r;
}