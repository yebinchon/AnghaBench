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
 int /*<<< orphan*/  FUNC0 (char***) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char**,size_t) ; 
 char** FUNC3 (char**,size_t,int) ; 
 char* FUNC4 (char const*) ; 
 size_t FUNC5 (char**) ; 

int FUNC6(char ***l, const char *value) {
        size_t n, m;
        char *v, **c;

        FUNC0(l);

        /* Like strv_extend(), but prepends rather than appends the new entry */

        if (!value)
                return 0;

        n = FUNC5(*l);

        /* Increase and overflow check. */
        m = n + 2;
        if (m < n)
                return -ENOMEM;

        v = FUNC4(value);
        if (!v)
                return -ENOMEM;

        c = FUNC3(*l, m, sizeof(char*));
        if (!c) {
                FUNC1(v);
                return -ENOMEM;
        }

        FUNC2(c+1, c, n * sizeof(char*));
        c[0] = v;
        c[n+1] = NULL;

        *l = c;
        return 0;
}