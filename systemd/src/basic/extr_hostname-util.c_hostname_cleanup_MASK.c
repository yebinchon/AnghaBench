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
 int HOST_NAME_MAX ; 
 scalar_t__ FUNC0 (char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 

char* FUNC3(char *s) {
        char *p, *d;
        bool dot, hyphen;

        FUNC1(s);

        for (p = s, d = s, dot = hyphen = true; *p && d - s < HOST_NAME_MAX; p++)
                if (*p == '.') {
                        if (dot || hyphen)
                                continue;

                        *(d++) = '.';
                        dot = true;
                        hyphen = false;

                } else if (*p == '-') {
                        if (dot)
                                continue;

                        *(d++) = '-';
                        dot = false;
                        hyphen = true;

                } else if (FUNC2(*p)) {
                        *(d++) = *p;
                        dot = false;
                        hyphen = false;
                }

        if (d > s && FUNC0(d[-1], '-', '.'))
                /* The dot can occur at most once, but we might have multiple
                 * hyphens, hence the loop */
                d--;
        *d = 0;

        return s;
}