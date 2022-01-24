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
typedef  char const Manager ;
typedef  int /*<<< orphan*/  DnsServerType ;
typedef  int /*<<< orphan*/  DnsServer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,union in_addr_union*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,union in_addr_union*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,union in_addr_union*,int) ; 
 int FUNC5 (char const*,int*,union in_addr_union*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(Manager *m, DnsServerType type, const char *word) {
        union in_addr_union address;
        int family, r, ifindex = 0;
        DnsServer *s;

        FUNC0(m);
        FUNC0(word);

        r = FUNC5(word, &family, &address, &ifindex);
        if (r < 0)
                return r;

        /* Silently filter out 0.0.0.0 and 127.0.0.53 (our own stub DNS listener) */
        if (!FUNC1(family, &address))
                return 0;

        /* Filter out duplicates */
        s = FUNC2(FUNC6(m, type), family, &address, ifindex);
        if (s) {
                /*
                 * Drop the marker. This is used to find the servers
                 * that ceased to exist, see
                 * manager_mark_dns_servers() and
                 * manager_flush_marked_dns_servers().
                 */
                FUNC3(s);
                return 0;
        }

        return FUNC4(m, NULL, type, NULL, family, &address, ifindex);
}