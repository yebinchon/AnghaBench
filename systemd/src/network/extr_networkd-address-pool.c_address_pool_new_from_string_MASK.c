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
typedef  char const Manager ;
typedef  int /*<<< orphan*/  AddressPool ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ **,int,union in_addr_union*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int,char const*,union in_addr_union*) ; 

int FUNC3(
                Manager *m,
                AddressPool **ret,
                int family,
                const char *p,
                unsigned prefixlen) {

        union in_addr_union u;
        int r;

        FUNC1(m);
        FUNC1(ret);
        FUNC1(p);

        r = FUNC2(family, p, &u);
        if (r < 0)
                return r;

        return FUNC0(m, ret, family, &u, prefixlen);
}