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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

int FUNC4(char **p, const char *s) {
        char *t;

        FUNC0(p);

        /* Replaces a string pointer with a strdup()ed new string,
         * possibly freeing the old one. */

        if (FUNC3(*p, s))
                return 0;

        if (s) {
                t = FUNC2(s);
                if (!t)
                        return -ENOMEM;
        } else
                t = NULL;

        FUNC1(*p);
        *p = t;

        return 1;
}