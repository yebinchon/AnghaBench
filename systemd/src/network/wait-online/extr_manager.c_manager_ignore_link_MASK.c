#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  ifname; int /*<<< orphan*/  ignore; int /*<<< orphan*/  required_for_online; scalar_t__ interfaces; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(Manager *m, Link *link) {
        FUNC0(m);
        FUNC0(link);

        /* always ignore the loopback interface */
        if (link->flags & IFF_LOOPBACK)
                return true;

        /* if interfaces are given on the command line, ignore all others */
        if (m->interfaces && !FUNC1(m->interfaces, link->ifname))
                return true;

        if (!link->required_for_online)
                return true;

        /* ignore interfaces we explicitly are asked to ignore */
        return FUNC2(m->ignore, link->ifname, 0);
}