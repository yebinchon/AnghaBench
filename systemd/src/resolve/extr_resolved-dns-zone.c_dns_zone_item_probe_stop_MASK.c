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
struct TYPE_9__ {int /*<<< orphan*/  notify_zone_items_done; int /*<<< orphan*/  notify_zone_items; } ;
struct TYPE_8__ {int /*<<< orphan*/  probe_transaction; } ;
typedef  TYPE_1__ DnsZoneItem ;
typedef  TYPE_2__ DnsTransaction ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC4(DnsZoneItem *i) {
        DnsTransaction *t;
        FUNC1(i);

        if (!i->probe_transaction)
                return;

        t = FUNC0(i->probe_transaction);

        FUNC3(t->notify_zone_items, i);
        FUNC3(t->notify_zone_items_done, i);
        FUNC2(t);
}