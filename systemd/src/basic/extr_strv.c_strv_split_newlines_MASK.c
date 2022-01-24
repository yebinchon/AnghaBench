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
 int /*<<< orphan*/  NEWLINE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 size_t FUNC3 (char**) ; 
 char** FUNC4 (char const*,int /*<<< orphan*/ ) ; 

char **FUNC5(const char *s) {
        char **l;
        size_t n;

        FUNC0(s);

        /* Special version of strv_split() that splits on newlines and
         * suppresses an empty string at the end */

        l = FUNC4(s, NEWLINE);
        if (!l)
                return NULL;

        n = FUNC3(l);
        if (n <= 0)
                return l;

        if (FUNC1(l[n - 1]))
                l[n - 1] = FUNC2(l[n - 1]);

        return l;
}