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
 int EINVAL ; 
 int ERANGE ; 
 char* FUNC0 (char const*,char*) ; 
 int FUNC1 (char const*,int*) ; 
 char* FUNC2 (char const*,int) ; 

int FUNC3(const char *p) {
        const char *pc, *n;
        int r, v;

        pc = FUNC0(p, "%");
        if (!pc)
                return -EINVAL;

        n = FUNC2(p, pc - p);
        r = FUNC1(n, &v);
        if (r < 0)
                return r;
        if (v < 0)
                return -ERANGE;

        return v;
}