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
 int DNS_LABEL_MAX ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const**,char*,int,int /*<<< orphan*/ ) ; 

int FUNC3(const char *name, const char *prefix) {
        const char *n, *p;
        int r, q;

        FUNC1(name);
        FUNC1(prefix);

        n = name;
        p = prefix;

        for (;;) {
                char ln[DNS_LABEL_MAX], lp[DNS_LABEL_MAX];

                r = FUNC2(&p, lp, sizeof lp, 0);
                if (r < 0)
                        return r;
                if (r == 0)
                        return true;

                q = FUNC2(&n, ln, sizeof ln, 0);
                if (q < 0)
                        return q;

                if (r != q)
                        return false;
                if (FUNC0(ln, lp, r) != 0)
                        return false;
        }
}