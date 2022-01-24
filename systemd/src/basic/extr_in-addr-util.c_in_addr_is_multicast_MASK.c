#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
union in_addr_union {int /*<<< orphan*/  in6; TYPE_1__ in; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union in_addr_union const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(int family, const union in_addr_union *u) {
        FUNC2(u);

        if (family == AF_INET)
                return FUNC1(FUNC3(u->in.s_addr));

        if (family == AF_INET6)
                return FUNC0(&u->in6);

        return -EAFNOSUPPORT;
}