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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FSETLOCKING_BYCALLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 

int FUNC3(const char *path, const char *options, FILE **ret) {
        FUNC1(ret);

        FILE *f = FUNC2(path, options);
        if (!f)
                return -errno;

        (void) FUNC0(f, FSETLOCKING_BYCALLER);

        *ret = f;
        return 0;
}