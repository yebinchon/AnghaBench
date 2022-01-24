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
typedef  int uint32_t ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  in6 ;

/* Variables and functions */
 int AF_INET6 ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,void const*,int) ; 

__attribute__((used)) static uint32_t FUNC4(int family, const void *a, int ifindex) {
        struct in6_addr in6;

        if (family != AF_INET6)
                return 0;

        /* Some apps can't deal with the scope ID attached to non-link-local addresses. Hence, let's suppress that. */

        FUNC2(sizeof(in6) == FUNC0(AF_INET6));
        FUNC3(&in6, a, sizeof(struct in6_addr));

        return FUNC1(&in6) ? ifindex : 0;
}