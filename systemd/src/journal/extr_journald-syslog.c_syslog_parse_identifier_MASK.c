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
 int /*<<< orphan*/  WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const) ; 
 size_t FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

size_t FUNC5(const char **buf, char **identifier, char **pid) {
        const char *p;
        char *t;
        size_t l, e;

        FUNC0(buf);
        FUNC0(identifier);
        FUNC0(pid);

        p = *buf;

        p += FUNC4(p, WHITESPACE);
        l = FUNC2(p, WHITESPACE);

        if (l <= 0 ||
            p[l-1] != ':')
                return 0;

        e = l;
        l--;

        if (l > 0 && p[l-1] == ']') {
                size_t k = l-1;

                for (;;) {

                        if (p[k] == '[') {
                                t = FUNC3(p+k+1, l-k-2);
                                if (t)
                                        *pid = t;

                                l = k;
                                break;
                        }

                        if (k == 0)
                                break;

                        k--;
                }
        }

        t = FUNC3(p, l);
        if (t)
                *identifier = t;

        /* Single space is used as separator */
        if (p[e] != '\0' && FUNC1(WHITESPACE, p[e]))
                e++;

        l = (p - *buf) + e;
        *buf = p + e;
        return l;
}