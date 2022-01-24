#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  sd_netlink_message ;
struct TYPE_7__ {scalar_t__ kernel_operstate; unsigned int flags; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int) ; 
 unsigned int IFF_ALLMULTI ; 
 unsigned int IFF_AUTOMEDIA ; 
 unsigned int IFF_BROADCAST ; 
 unsigned int IFF_DEBUG ; 
 unsigned int IFF_DORMANT ; 
 unsigned int IFF_DYNAMIC ; 
 unsigned int IFF_ECHO ; 
 unsigned int IFF_LOOPBACK ; 
 unsigned int IFF_LOWER_UP ; 
 unsigned int IFF_MASTER ; 
 unsigned int IFF_MULTICAST ; 
 unsigned int IFF_NOARP ; 
 unsigned int IFF_NOTRAILERS ; 
 unsigned int IFF_POINTOPOINT ; 
 unsigned int IFF_PORTSEL ; 
 unsigned int IFF_PROMISC ; 
 unsigned int IFF_RUNNING ; 
 unsigned int IFF_SLAVE ; 
 unsigned int IFF_UP ; 
 int /*<<< orphan*/  IFLA_OPERSTATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,unsigned int,...) ; 
 int FUNC4 (TYPE_1__*,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static int FUNC7(Link *link, sd_netlink_message *m, bool force_update_operstate) {
        unsigned flags, unknown_flags_added, unknown_flags_removed, unknown_flags;
        uint8_t operstate;
        int r;

        FUNC1(link);

        r = FUNC6(m, &flags);
        if (r < 0)
                return FUNC4(link, r, "Could not get link flags: %m");

        r = FUNC5(m, IFLA_OPERSTATE, &operstate);
        if (r < 0)
                /* if we got a message without operstate, take it to mean
                   the state was unchanged */
                operstate = link->kernel_operstate;

        if (!force_update_operstate && (link->flags == flags) && (link->kernel_operstate == operstate))
                return 0;

        if (link->flags != flags) {
                FUNC3(link, "Flags change:%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
                               FUNC0("LOOPBACK", IFF_LOOPBACK, link->flags, flags),
                               FUNC0("MASTER", IFF_MASTER, link->flags, flags),
                               FUNC0("SLAVE", IFF_SLAVE, link->flags, flags),
                               FUNC0("UP", IFF_UP, link->flags, flags),
                               FUNC0("DORMANT", IFF_DORMANT, link->flags, flags),
                               FUNC0("LOWER_UP", IFF_LOWER_UP, link->flags, flags),
                               FUNC0("RUNNING", IFF_RUNNING, link->flags, flags),
                               FUNC0("MULTICAST", IFF_MULTICAST, link->flags, flags),
                               FUNC0("BROADCAST", IFF_BROADCAST, link->flags, flags),
                               FUNC0("POINTOPOINT", IFF_POINTOPOINT, link->flags, flags),
                               FUNC0("PROMISC", IFF_PROMISC, link->flags, flags),
                               FUNC0("ALLMULTI", IFF_ALLMULTI, link->flags, flags),
                               FUNC0("PORTSEL", IFF_PORTSEL, link->flags, flags),
                               FUNC0("AUTOMEDIA", IFF_AUTOMEDIA, link->flags, flags),
                               FUNC0("DYNAMIC", IFF_DYNAMIC, link->flags, flags),
                               FUNC0("NOARP", IFF_NOARP, link->flags, flags),
                               FUNC0("NOTRAILERS", IFF_NOTRAILERS, link->flags, flags),
                               FUNC0("DEBUG", IFF_DEBUG, link->flags, flags),
                               FUNC0("ECHO", IFF_ECHO, link->flags, flags));

                unknown_flags = ~(IFF_LOOPBACK | IFF_MASTER | IFF_SLAVE | IFF_UP |
                                  IFF_DORMANT | IFF_LOWER_UP | IFF_RUNNING |
                                  IFF_MULTICAST | IFF_BROADCAST | IFF_POINTOPOINT |
                                  IFF_PROMISC | IFF_ALLMULTI | IFF_PORTSEL |
                                  IFF_AUTOMEDIA | IFF_DYNAMIC | IFF_NOARP |
                                  IFF_NOTRAILERS | IFF_DEBUG | IFF_ECHO);
                unknown_flags_added = ((link->flags ^ flags) & flags & unknown_flags);
                unknown_flags_removed = ((link->flags ^ flags) & link->flags & unknown_flags);

                /* link flags are currently at most 18 bits, let's align to
                 * printing 20 */
                if (unknown_flags_added)
                        FUNC3(link,
                                       "Unknown link flags gained: %#.5x (ignoring)",
                                       unknown_flags_added);

                if (unknown_flags_removed)
                        FUNC3(link,
                                       "Unknown link flags lost: %#.5x (ignoring)",
                                       unknown_flags_removed);
        }

        link->flags = flags;
        link->kernel_operstate = operstate;

        FUNC2(link, true);

        return 0;
}