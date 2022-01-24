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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 

int FUNC2(FILE *f, const char *s, const char *separator, bool *space) {
        int r;

        FUNC0(s);

        /* Outputs the specified string with fputs(), but optionally prefixes it with a separator. The *space parameter
         * when specified shall initially point to a boolean variable initialized to false. It is set to true after the
         * first invocation. This call is supposed to be use in loops, where a separator shall be inserted between each
         * element, but not before the first one. */

        if (!f)
                f = stdout;

        if (space) {
                if (!separator)
                        separator = " ";

                if (*space) {
                        r = FUNC1(separator, f);
                        if (r < 0)
                                return r;
                }

                *space = true;
        }

        return FUNC1(s, f);
}