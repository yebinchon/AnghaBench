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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char **FUNC3(char **l, const char *p) {

        char **f, **t;

        if (!l)
                return NULL;

        FUNC0(p);

        /* Drops every occurrence of the env var setting p in the
         * string list. Edits in-place. */

        for (f = t = l; *f; f++) {

                if (FUNC1(*f, p)) {
                        FUNC2(*f);
                        continue;
                }

                *(t++) = *f;
        }

        *t = NULL;
        return l;
}