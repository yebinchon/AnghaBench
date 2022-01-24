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

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,char const*,union in_addr_union*) ; 

int FUNC4(int family, const char *s, union in_addr_union *ret) {
        union in_addr_union buffer;
        FUNC1(s);

        if (!FUNC0(family, AF_INET, AF_INET6))
                return -EAFNOSUPPORT;

        errno = 0;
        if (FUNC3(family, s, ret ?: &buffer) <= 0)
                return FUNC2(EINVAL);

        return 0;
}