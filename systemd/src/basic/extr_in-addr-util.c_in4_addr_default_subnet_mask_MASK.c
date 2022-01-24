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
typedef  struct in_addr const in_addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in_addr const*) ; 
 int FUNC1 (struct in_addr const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_addr const*,unsigned char) ; 

int FUNC3(const struct in_addr *addr, struct in_addr *mask) {
        unsigned char prefixlen;
        int r;

        FUNC0(addr);
        FUNC0(mask);

        r = FUNC1(addr, &prefixlen);
        if (r < 0)
                return r;

        FUNC2(mask, prefixlen);
        return 0;
}