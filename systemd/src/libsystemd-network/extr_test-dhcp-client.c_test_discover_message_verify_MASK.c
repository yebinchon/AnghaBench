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
struct DHCPMessage {int /*<<< orphan*/  xid; } ;

/* Variables and functions */
 int DHCP_DISCOVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_options ; 
 int FUNC2 (struct DHCPMessage*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(size_t size, struct DHCPMessage *dhcp) {
        int res;

        res = FUNC2(dhcp, size, check_options, NULL, NULL);
        FUNC0(res == DHCP_DISCOVER);

        if (verbose)
                FUNC3("  recv DHCP Discover 0x%08x\n", FUNC1(dhcp->xid));

        return 0;
}