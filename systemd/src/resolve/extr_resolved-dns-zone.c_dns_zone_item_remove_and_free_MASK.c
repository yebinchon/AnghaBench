#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  by_name; int /*<<< orphan*/  by_key; } ;
struct TYPE_13__ {TYPE_1__* rr; } ;
struct TYPE_12__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ DnsZoneItem ;
typedef  TYPE_3__ DnsZone ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  by_key ; 
 int /*<<< orphan*/  by_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(DnsZone *z, DnsZoneItem *i) {
        DnsZoneItem *first;

        FUNC1(z);

        if (!i)
                return;

        first = FUNC5(z->by_key, i->rr->key);
        FUNC0(by_key, first, i);
        if (first)
                FUNC2(FUNC7(z->by_key, first->rr->key, first) >= 0);
        else
                FUNC6(z->by_key, i->rr->key);

        first = FUNC5(z->by_name, FUNC3(i->rr->key));
        FUNC0(by_name, first, i);
        if (first)
                FUNC2(FUNC7(z->by_name, FUNC3(first->rr->key), first) >= 0);
        else
                FUNC6(z->by_name, FUNC3(i->rr->key));

        FUNC4(i);
}