#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  slice; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_9__ {scalar_t__ ip_address_deny; scalar_t__ ip_address_allow; scalar_t__ ip_filters_egress; scalar_t__ ip_filters_ingress; scalar_t__ ip_accounting; } ;
typedef  TYPE_2__ CGroupContext ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3(Unit *u) {
        CGroupContext *c;
        Unit *p;
        FUNC1(u);

        c = FUNC2(u);
        if (!c)
                return false;

        if (c->ip_accounting ||
            c->ip_address_allow ||
            c->ip_address_deny ||
            c->ip_filters_ingress ||
            c->ip_filters_egress)
                return true;

        /* If any parent slice has an IP access list defined, it applies too */
        for (p = FUNC0(u->slice); p; p = FUNC0(p->slice)) {
                c = FUNC2(p);
                if (!c)
                        return false;

                if (c->ip_address_allow ||
                    c->ip_address_deny)
                        return true;
        }

        return false;
}