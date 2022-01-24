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
typedef  size_t MountEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC5(const char *root_directory, MountEntry *m, size_t *n) {
        MountEntry *f, *t;

        FUNC0(m);
        FUNC0(n);

        /* Nothing to do */
        if (!root_directory)
                return;

        /* Drops all mounts that are outside of the root directory. */

        for (f = m, t = m; f < m + *n; f++) {

                if (!FUNC4(FUNC3(f), root_directory)) {
                        FUNC1("%s is outside of root directory.", FUNC3(f));
                        FUNC2(f);
                        continue;
                }

                *t = *f;
                t++;
        }

        *n = t - m;
}