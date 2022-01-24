#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; TYPE_1__* network; } ;
struct TYPE_7__ {scalar_t__ ipv6_accept_ra; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool FUNC4(Link *link) {
        FUNC0(link);

        if (!FUNC3())
                return false;

        if (link->flags & IFF_LOOPBACK)
                return false;

        if (!link->network)
                return false;

        if (!FUNC2(link))
                return false;

        /* If unset use system default (enabled if local forwarding is disabled.
         * disabled if local forwarding is enabled).
         * If set, ignore or enforce RA independent of local forwarding state.
         */
        if (link->network->ipv6_accept_ra < 0)
                /* default to accept RA if ip_forward is disabled and ignore RA if ip_forward is enabled */
                return !FUNC1(link);
        else if (link->network->ipv6_accept_ra > 0)
                /* accept RA even if ip_forward is enabled */
                return true;
        else
                /* ignore RA */
                return false;
}