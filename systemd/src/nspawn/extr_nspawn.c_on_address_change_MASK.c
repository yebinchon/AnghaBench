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
typedef  union in_addr_union sd_netlink_message ;
typedef  union in_addr_union sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  arg_expose_ports ; 
 int /*<<< orphan*/  FUNC0 (union in_addr_union*) ; 
 int /*<<< orphan*/  FUNC1 (union in_addr_union*,int /*<<< orphan*/ ,union in_addr_union*) ; 

__attribute__((used)) static int FUNC2(sd_netlink *rtnl, sd_netlink_message *m, void *userdata) {
        union in_addr_union *exposed = userdata;

        FUNC0(rtnl);
        FUNC0(m);
        FUNC0(exposed);

        FUNC1(rtnl, arg_expose_ports, exposed);
        return 0;
}