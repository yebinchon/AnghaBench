#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  rr; } ;
typedef  TYPE_1__ DnsZoneItem ;

/* Variables and functions */
 scalar_t__ DNS_ZONE_ITEM_ESTABLISHED ; 
 scalar_t__ DNS_ZONE_ITEM_VERIFYING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(DnsZoneItem *i) {
        int r;

        FUNC0(i);

        if (i->state != DNS_ZONE_ITEM_ESTABLISHED)
                return 0;

        FUNC3("Verifying RR %s", FUNC5(FUNC1(i->rr)));

        i->state = DNS_ZONE_ITEM_VERIFYING;
        r = FUNC2(i);
        if (r < 0) {
                FUNC4(r, "Failed to start probing for verifying RR: %m");
                i->state = DNS_ZONE_ITEM_ESTABLISHED;
                return r;
        }

        return 0;
}