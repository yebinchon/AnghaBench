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
struct in_addr {int dummy; } ;
typedef  struct in_addr const OrderedSet ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct in_addr const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,union in_addr_union const*,char**) ; 
 int FUNC2 (struct in_addr const*,char*) ; 

__attribute__((used)) static int FUNC3(OrderedSet *s, const struct in_addr *address) {
        char *p;
        int r;

        FUNC0(s);
        FUNC0(address);

        r = FUNC1(AF_INET, (const union in_addr_union*) address, &p);
        if (r < 0)
                return r;

        r = FUNC2(s, p);
        if (r == -EEXIST)
                return 0;

        return r;
}