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
 char** FUNC0 (char**,size_t,int) ; 
 size_t FUNC1 (char**) ; 

int FUNC2(char ***l, char *a, char *b) {
        char **c;
        size_t n, m;

        if (!a && !b)
                return 0;

        n = FUNC1(*l);

        /* increase and check for overflow */
        m = n + !!a + !!b + 1;
        if (m < n)
                return -ENOMEM;

        c = FUNC0(*l, m, sizeof(char*));
        if (!c)
                return -ENOMEM;

        if (a)
                c[n++] = a;
        if (b)
                c[n++] = b;
        c[n] = NULL;

        *l = c;
        return 0;
}