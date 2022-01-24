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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

char **FUNC3(char **l, const char *s) {
        char **f, **t;

        if (!l)
                return NULL;

        FUNC0(s);

        /* Drops every occurrence of s in the string list, edits
         * in-place. */

        for (f = t = l; *f; f++)
                if (FUNC2(*f, s))
                        FUNC1(*f);
                else
                        *(t++) = *f;

        *t = NULL;
        return l;
}