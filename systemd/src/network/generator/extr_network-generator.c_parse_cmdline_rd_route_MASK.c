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
typedef  union in_addr_union {int dummy; } in_addr_union ;
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int EINVAL ; 
 int FUNC0 (char const*,int,union in_addr_union*,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,unsigned char,union in_addr_union*,union in_addr_union*) ; 
 int FUNC2 (int,char const**,union in_addr_union*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*,char) ; 
 char* FUNC5 (char const*,char*) ; 
 char* FUNC6 (char const*,int) ; 

__attribute__((used)) static int FUNC7(Context *context, const char *key, const char *value) {
        union in_addr_union addr = {}, gateway = {};
        unsigned char prefixlen;
        const char *buf, *p;
        int family, r;

        /* rd.route=<net>/<netmask>:<gateway>[:<interface>] */

        if (FUNC3(key, value))
                return -EINVAL;

        if (value[0] == '[') {
                p = FUNC4(value, ']');
                if (!p)
                        return -EINVAL;

                if (p[1] != ':')
                        return -EINVAL;

                buf = FUNC6(value + 1, p - value - 1);
                value = p + 2;
                family = AF_INET6;
        } else {
                p = FUNC4(value, ':');
                if (!p)
                        return -EINVAL;

                buf = FUNC6(value, p - value);
                value = p + 1;
                family = AF_INET;
        }

        r = FUNC0(buf, family, &addr, &prefixlen);
        if (r < 0)
                return r;

        p = FUNC4(value, ':');
        if (!p)
                value = FUNC5(value, ":");

        r = FUNC2(family, &value, &gateway);
        if (r < 0)
                return r;

        return FUNC1(context, value, family, prefixlen, &addr, &gateway);
}