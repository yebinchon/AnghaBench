#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dhcp_type; } ;
typedef  TYPE_1__ Network ;
typedef  scalar_t__ DHCPType ;
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,TYPE_1__**) ; 

__attribute__((used)) static int FUNC3(Context *context, const char *ifname, const char *dhcp_type) {
        Network *network;
        DHCPType t;
        int r;

        t = FUNC0(dhcp_type);
        if (t < 0)
                return -EINVAL;

        network = FUNC1(context, ifname);
        if (!network) {
                r = FUNC2(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        network->dhcp_type = t;
        return 0;
}