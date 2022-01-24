#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  by_name; int /*<<< orphan*/  by_key; } ;
struct TYPE_12__ {TYPE_1__* rr; } ;
struct TYPE_11__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ DnsZoneItem ;
typedef  TYPE_3__ DnsZone ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  by_key ; 
 int /*<<< orphan*/  by_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(DnsZone *z, DnsZoneItem *i) {
        DnsZoneItem *first;
        int r;

        first = FUNC3(z->by_key, i->rr->key);
        if (first) {
                FUNC0(by_key, first, i);
                FUNC1(FUNC5(z->by_key, first->rr->key, first) >= 0);
        } else {
                r = FUNC4(z->by_key, i->rr->key, i);
                if (r < 0)
                        return r;
        }

        first = FUNC3(z->by_name, FUNC2(i->rr->key));
        if (first) {
                FUNC0(by_name, first, i);
                FUNC1(FUNC5(z->by_name, FUNC2(first->rr->key), first) >= 0);
        } else {
                r = FUNC4(z->by_name, FUNC2(i->rr->key), i);
                if (r < 0)
                        return r;
        }

        return 0;
}