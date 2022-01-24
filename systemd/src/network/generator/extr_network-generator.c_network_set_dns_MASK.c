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
typedef  union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_4__ {int /*<<< orphan*/  dns; } ;
typedef  TYPE_1__ Network ;
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int FUNC0 (char const*,int*,union in_addr_union*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,TYPE_1__**) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC4(Context *context, const char *ifname, const char *dns) {
        union in_addr_union a;
        Network *network;
        int family, r;

        r = FUNC0(dns, &family, &a);
        if (r < 0)
                return r;

        network = FUNC1(context, ifname);
        if (!network) {
                r = FUNC2(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        return FUNC3(&network->dns, dns);
}