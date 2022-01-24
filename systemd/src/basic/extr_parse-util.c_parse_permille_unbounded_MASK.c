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
 int INT_MAX ; 
 char* FUNC0 (char const*,char*) ; 
 char* FUNC1 (char const*,char,int) ; 
 int FUNC2 (char const*,int*) ; 
 char* FUNC3 (char const*,int) ; 

int FUNC4(const char *p) {
        const char *pc, *pm, *dot, *n;
        int r, q, v;

        pm = FUNC0(p, "‰");
        if (pm) {
                n = FUNC3(p, pm - p);
                r = FUNC2(n, &v);
                if (r < 0)
                        return r;
                if (v < 0)
                        return -ERANGE;
        } else {
                pc = FUNC0(p, "%");
                if (!pc)
                        return -EINVAL;

                dot = FUNC1(p, '.', pc - p);
                if (dot) {
                        if (dot + 2 != pc)
                                return -EINVAL;
                        if (dot[1] < '0' || dot[1] > '9')
                                return -EINVAL;
                        q = dot[1] - '0';
                        n = FUNC3(p, dot - p);
                } else {
                        q = 0;
                        n = FUNC3(p, pc - p);
                }
                r = FUNC2(n, &v);
                if (r < 0)
                        return r;
                if (v < 0)
                        return -ERANGE;
                if (v > (INT_MAX - q) / 10)
                        return -ERANGE;

                v = v * 10 + q;
        }

        return v;
}