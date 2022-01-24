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
union in_addr_union {int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int EINVAL ; 
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char const**,union in_addr_union*) ; 
 int FUNC2 (char const*,unsigned char*) ; 
 char* FUNC3 (char const*,char) ; 
 char* FUNC4 (char const*,int) ; 

__attribute__((used)) static int FUNC5(int family, const char **value, unsigned char *ret) {
        union in_addr_union netmask;
        const char *p, *q;
        int r;

        r = FUNC1(family, value, &netmask);
        if (r > 0) {
                if (family == AF_INET6)
                        /* TODO: Not supported yet. */
                        return -EINVAL;

                *ret = FUNC0(&netmask.in);
        } else if (r == 0)
                *ret = family == AF_INET6 ? 128 : 32;
        else {
                p = FUNC3(*value, ':');
                if (!p)
                        return -EINVAL;

                q = FUNC4(*value, p - *value);
                r = FUNC2(q, ret);
                if (r < 0)
                        return r;

                *value = p + 1;
        }

        return 0;
}