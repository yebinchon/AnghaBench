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
 char** FUNC2 (char**,size_t,int) ; 
 char* FUNC3 (char const*) ; 
 size_t FUNC4 (char**) ; 

int FUNC5(char ***l, const char *value, size_t n) {
        size_t i, j, k;
        char **nl;

        FUNC0(l);

        if (!value)
                return 0;
        if (n == 0)
                return 0;

        /* Adds the value n times to l */

        k = FUNC4(*l);

        nl = FUNC2(*l, k + n + 1, sizeof(char *));
        if (!nl)
                return -ENOMEM;

        *l = nl;

        for (i = k; i < k + n; i++) {
                nl[i] = FUNC3(value);
                if (!nl[i])
                        goto rollback;
        }

        nl[i] = NULL;
        return 0;

rollback:
        for (j = k; j < i; j++)
                FUNC1(nl[j]);

        nl[k] = NULL;
        return -ENOMEM;
}