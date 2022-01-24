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
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,unsigned char,union in_addr_union*,union in_addr_union*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,union in_addr_union*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int,char const**,union in_addr_union*) ; 
 int FUNC8 (int,char const**,unsigned char*) ; 
 char* FUNC9 (char const*,char) ; 
 char* FUNC10 (char const*,int) ; 

__attribute__((used)) static int FUNC11(Context *context, int family, const char *value) {
        union in_addr_union addr = {}, peer = {}, gateway = {};
        const char *hostname, *ifname, *dhcp_type, *dns, *p;
        unsigned char prefixlen;
        int r;

        /* ip=<client-IP>:[<peer>]:<gateway-IP>:<netmask>:<client_hostname>:<interface>:{none|off|dhcp|on|any|dhcp6|auto6|ibft}[:[<mtu>][:<macaddr>]]
         * ip=<client-IP>:[<peer>]:<gateway-IP>:<netmask>:<client_hostname>:<interface>:{none|off|dhcp|on|any|dhcp6|auto6|ibft}[:[<dns1>][:<dns2>]] */

        r = FUNC7(family, &value, &addr);
        if (r < 0)
                return r;
        r = FUNC7(family, &value, &peer);
        if (r < 0)
                return r;
        r = FUNC7(family, &value, &gateway);
        if (r < 0)
                return r;
        r = FUNC8(family, &value, &prefixlen);
        if (r < 0)
                return r;

        /* hostname */
        p = FUNC9(value, ':');
        if (!p)
                return -EINVAL;

        hostname = FUNC10(value, p - value);
        if (!FUNC0(hostname, false))
                return -EINVAL;

        value = p + 1;

        /* ifname */
        p = FUNC9(value, ':');
        if (!p)
                return -EINVAL;

        ifname = FUNC10(value, p - value);

        value = p + 1;

        /* dhcp_type */
        p = FUNC9(value, ':');
        if (!p)
                dhcp_type = value;
        else
                dhcp_type = FUNC10(value, p - value);

        r = FUNC2(context, ifname, dhcp_type);
        if (r < 0)
                return r;

        /* set values */
        r = FUNC4(context, ifname, hostname);
        if (r < 0)
                return r;

        r = FUNC1(context, ifname, family, prefixlen, &addr, &peer);
        if (r < 0)
                return r;

        r = FUNC5(context, ifname, family, 0, NULL, &gateway);
        if (r < 0)
                return r;

        if (!p)
                return 0;

        /* First, try [<mtu>][:<macaddr>] */
        r = FUNC6(context, ifname, AF_UNSPEC, p + 1);
        if (r >= 0)
                return 0;

        /* Next, try [<dns1>][:<dns2>] */
        value = p + 1;
        p = FUNC9(value, ':');
        if (!p) {
                r = FUNC3(context, ifname, value);
                if (r < 0)
                        return r;
        } else {
                dns = FUNC10(value, p - value);
                r = FUNC3(context, ifname, dns);
                if (r < 0)
                        return r;
                r = FUNC3(context, ifname, p + 1);
                if (r < 0)
                        return r;
        }

        return 0;
}