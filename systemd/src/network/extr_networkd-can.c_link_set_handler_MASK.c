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
typedef  int /*<<< orphan*/  sd_netlink_message ;
typedef  int /*<<< orphan*/  sd_netlink ;
typedef  int /*<<< orphan*/  Link ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(sd_netlink *rtnl, sd_netlink_message *m, Link *link) {
        int r;

        FUNC0(link);

        FUNC2(link, "Set link");

        r = FUNC4(m);
        if (r < 0 && r != -EEXIST) {
                FUNC3(link, r, "Failed to configure CAN link: %m");
                FUNC1(link);
        }

        return 1;
}