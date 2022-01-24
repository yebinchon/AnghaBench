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
struct TYPE_5__ {scalar_t__ block_gc; int /*<<< orphan*/  notify_transactions_done; int /*<<< orphan*/  notify_transactions; int /*<<< orphan*/  notify_zone_items_done; int /*<<< orphan*/  notify_zone_items; int /*<<< orphan*/  notify_query_candidates_done; int /*<<< orphan*/  notify_query_candidates; } ;
typedef  TYPE_1__ DnsTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(DnsTransaction *t) {
        FUNC0(t);

        if (t->block_gc > 0)
                return true;

        if (FUNC2(t->notify_query_candidates) &&
            FUNC2(t->notify_query_candidates_done) &&
            FUNC2(t->notify_zone_items) &&
            FUNC2(t->notify_zone_items_done) &&
            FUNC2(t->notify_transactions) &&
            FUNC2(t->notify_transactions_done)) {
                FUNC1(t);
                return false;
        }

        return true;
}