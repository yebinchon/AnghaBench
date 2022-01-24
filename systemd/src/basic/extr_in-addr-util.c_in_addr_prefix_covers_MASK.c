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
 int /*<<< orphan*/  FUNC0 (union in_addr_union const*) ; 
 int FUNC1 (int,union in_addr_union*,union in_addr_union*) ; 
 int FUNC2 (int,union in_addr_union*,unsigned char) ; 

int FUNC3(int family,
                          const union in_addr_union *prefix,
                          unsigned char prefixlen,
                          const union in_addr_union *address) {

        union in_addr_union masked_prefix, masked_address;
        int r;

        FUNC0(prefix);
        FUNC0(address);

        masked_prefix = *prefix;
        r = FUNC2(family, &masked_prefix, prefixlen);
        if (r < 0)
                return r;

        masked_address = *address;
        r = FUNC2(family, &masked_address, prefixlen);
        if (r < 0)
                return r;

        return FUNC1(family, &masked_prefix, &masked_address);
}