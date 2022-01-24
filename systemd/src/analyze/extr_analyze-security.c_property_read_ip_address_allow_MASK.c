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
union in_addr_union {int /*<<< orphan*/  in6; int /*<<< orphan*/  in; } ;
typedef  int uint32_t ;
struct security_info {int ip_address_allow_other; int ip_address_allow_localhost; int ip_address_deny_all; } ;
typedef  char const sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  char const sd_bus ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (scalar_t__,union in_addr_union*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC3 (char const*,char,char*) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*,char*,...) ; 
 int FUNC6 (char const*,char,void const**,size_t*) ; 
 char const* FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(
                sd_bus *bus,
                const char *member,
                sd_bus_message *m,
                sd_bus_error *error,
                void *userdata) {

        struct security_info *info = userdata;
        bool deny_ipv4 = false, deny_ipv6 = false;
        int r;

        FUNC0(bus);
        FUNC0(member);
        FUNC0(m);

        r = FUNC3(m, 'a', "(iayu)");
        if (r < 0)
                return r;

        for (;;) {
                const void *data;
                size_t size;
                int32_t family;
                uint32_t prefixlen;

                r = FUNC3(m, 'r', "iayu");
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                r = FUNC5(m, "i", &family);
                if (r < 0)
                        return r;

                r = FUNC6(m, 'y', &data, &size);
                if (r < 0)
                        return r;

                r = FUNC5(m, "u", &prefixlen);
                if (r < 0)
                        return r;

                r = FUNC4(m);
                if (r < 0)
                        return r;

                if (FUNC7(member, "IPAddressAllow")) {
                        union in_addr_union u;

                        if (family == AF_INET && size == 4 && prefixlen == 8)
                                FUNC2(&u.in, data, size);
                        else if (family == AF_INET6 && size == 16 && prefixlen == 128)
                                FUNC2(&u.in6, data, size);
                        else {
                                info->ip_address_allow_other = true;
                                continue;
                        }

                        if (FUNC1(family, &u))
                                info->ip_address_allow_localhost = true;
                        else
                                info->ip_address_allow_other = true;
                } else {
                        FUNC0(FUNC7(member, "IPAddressDeny"));

                        if (family == AF_INET && size == 4 && prefixlen == 0)
                                deny_ipv4 = true;
                        else if (family == AF_INET6 && size == 16 && prefixlen == 0)
                                deny_ipv6 = true;
                }
        }

        info->ip_address_deny_all = deny_ipv4 && deny_ipv6;

        return FUNC4(m);
}