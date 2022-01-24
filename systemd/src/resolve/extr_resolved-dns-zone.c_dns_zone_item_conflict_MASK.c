#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  key; } ;
struct TYPE_8__ {TYPE_1__* scope; TYPE_5__* rr; int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int /*<<< orphan*/  manager; } ;
typedef  TYPE_2__ DnsZoneItem ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_ZONE_ITEM_ESTABLISHED ; 
 int /*<<< orphan*/  DNS_ZONE_ITEM_PROBING ; 
 int /*<<< orphan*/  DNS_ZONE_ITEM_VERIFYING ; 
 int /*<<< orphan*/  DNS_ZONE_ITEM_WITHDRAWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(DnsZoneItem *i) {
        FUNC1(i);

        if (!FUNC0(i->state, DNS_ZONE_ITEM_PROBING, DNS_ZONE_ITEM_VERIFYING, DNS_ZONE_ITEM_ESTABLISHED))
                return;

        FUNC6("Detected conflict on %s", FUNC9(FUNC3(i->rr)));

        FUNC4(i);

        /* Withdraw the conflict item */
        i->state = DNS_ZONE_ITEM_WITHDRAWN;

        FUNC5(i->scope->manager, FUNC2(i->rr->key));

        /* Maybe change the hostname */
        if (FUNC7(i->scope->manager, FUNC2(i->rr->key)) > 0)
                FUNC8(i->scope->manager);
}