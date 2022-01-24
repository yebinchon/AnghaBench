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
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*,int) ; 

__attribute__((used)) static int FUNC4(Context *context, const char *value) {
        const char *ifname, *dhcp_type, *p;
        int r;

        /* ip=<interface>:{dhcp|on|any|dhcp6|auto6}[:[<mtu>][:<macaddr>]] */

        p = FUNC2(value, ':');
        if (!p)
                return -EINVAL;

        ifname = FUNC3(value, p - value);

        value = p + 1;
        p = FUNC2(value, ':');
        if (!p)
                dhcp_type = value;
        else
                dhcp_type = FUNC3(value, p - value);

        r = FUNC0(context, ifname, dhcp_type);
        if (r < 0)
                return r;

        if (!p)
                return 0;

        return FUNC1(context, ifname, AF_UNSPEC, p + 1);
}