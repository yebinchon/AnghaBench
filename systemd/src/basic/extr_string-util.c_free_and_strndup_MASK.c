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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char const*,size_t) ; 
 scalar_t__ FUNC4 (char*,char const*,size_t) ; 

int FUNC5(char **p, const char *s, size_t l) {
        char *t;

        FUNC0(p);
        FUNC0(s || l == 0);

        /* Replaces a string pointer with a strndup()ed new string,
         * freeing the old one. */

        if (!*p && !s)
                return 0;

        if (*p && s && FUNC4(*p, s, l) && (l > FUNC2(*p) || (*p)[l] == '\0'))
                return 0;

        if (s) {
                t = FUNC3(s, l);
                if (!t)
                        return -ENOMEM;
        } else
                t = NULL;

        FUNC1(*p, t);
        return 1;
}