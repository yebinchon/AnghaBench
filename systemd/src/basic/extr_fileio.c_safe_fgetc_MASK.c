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
 int /*<<< orphan*/  EIO ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(FILE *f, char *ret) {
        int k;

        FUNC0(f);

        /* A safer version of plain fgetc(): let's propagate the error that happened while reading as such, and
         * separate the EOF condition from the byte read, to avoid those confusion signed/unsigned issues fgetc()
         * has. */

        errno = 0;
        k = FUNC3(f);
        if (k == EOF) {
                if (FUNC2(f))
                        return FUNC1(EIO);

                if (ret)
                        *ret = 0;

                return 0;
        }

        if (ret)
                *ret = k;

        return 1;
}