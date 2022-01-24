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
struct security_info {int restrict_address_family_inet; int restrict_address_family_unix; int restrict_address_family_netlink; int restrict_address_family_packet; int restrict_address_family_other; } ;
typedef  char const sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  char const sd_bus ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,char,char*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*,char*,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(
                sd_bus *bus,
                const char *member,
                sd_bus_message *m,
                sd_bus_error *error,
                void *userdata) {

        struct security_info *info = userdata;
        int whitelist, r;

        FUNC1(bus);
        FUNC1(member);
        FUNC1(m);

        r = FUNC2(m, 'r', "bas");
        if (r < 0)
                return r;

        r = FUNC4(m, "b", &whitelist);
        if (r < 0)
                return r;

        info->restrict_address_family_inet =
                info->restrict_address_family_unix =
                info->restrict_address_family_netlink =
                info->restrict_address_family_packet =
                info->restrict_address_family_other = whitelist;

        r = FUNC2(m, 'a', "s");
        if (r < 0)
                return r;

        for (;;) {
                const char *name;

                r = FUNC4(m, "s", &name);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                if (FUNC0(name, "AF_INET", "AF_INET6"))
                        info->restrict_address_family_inet = !whitelist;
                else if (FUNC5(name, "AF_UNIX"))
                        info->restrict_address_family_unix = !whitelist;
                else if (FUNC5(name, "AF_NETLINK"))
                        info->restrict_address_family_netlink = !whitelist;
                else if (FUNC5(name, "AF_PACKET"))
                        info->restrict_address_family_packet = !whitelist;
                else
                        info->restrict_address_family_other = !whitelist;
        }

        r = FUNC3(m);
        if (r < 0)
                return r;

        return FUNC3(m);
}