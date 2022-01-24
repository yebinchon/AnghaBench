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
typedef  int /*<<< orphan*/  Network ;
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,union in_addr_union*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,unsigned char,union in_addr_union*,union in_addr_union*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Context *context, const char *ifname, int family, unsigned char prefixlen,
                             union in_addr_union *dest, union in_addr_union *gateway) {
        Network *network;
        int r;

        if (FUNC0(family, gateway) != 0)
                return 0;

        network = FUNC1(context, ifname);
        if (!network) {
                r = FUNC2(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        return FUNC3(network, family, prefixlen, dest, gateway, NULL);
}