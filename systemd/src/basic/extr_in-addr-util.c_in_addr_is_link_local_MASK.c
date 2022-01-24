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
union in_addr_union {int /*<<< orphan*/  in6; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (union in_addr_union const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(int family, const union in_addr_union *u) {
        FUNC1(u);

        if (family == AF_INET)
                return FUNC2(&u->in);

        if (family == AF_INET6)
                return FUNC0(&u->in6);

        return -EAFNOSUPPORT;
}