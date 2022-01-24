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
typedef  union in_addr_union const sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (union in_addr_union const*) ; 
 int FUNC2 (union in_addr_union const*,char*,unsigned char) ; 
 int FUNC3 (union in_addr_union const*,char,union in_addr_union const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (union in_addr_union const*) ; 
 int FUNC5 (union in_addr_union const*,char,char*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *m, int family, const union in_addr_union *prefix, unsigned char prefixlen) {
        int r;

        FUNC1(m);
        FUNC1(prefix);

        r = FUNC5(m, 'r', "iayu");
        if (r < 0)
                return r;

        r = FUNC2(m, "i", family);
        if (r < 0)
                return r;

        r = FUNC3(m, 'y', prefix, FUNC0(family));
        if (r < 0)
                return r;

        r = FUNC2(m, "u", prefixlen);
        if (r < 0)
                return r;

        return FUNC4(m);
}