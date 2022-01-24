#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  by_expiry; int /*<<< orphan*/  by_key; } ;
struct TYPE_12__ {int /*<<< orphan*/  prioq_idx; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ DnsCacheItem ;
typedef  TYPE_2__ DnsCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  by_key ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(DnsCache *c, DnsCacheItem *i) {
        DnsCacheItem *first;

        FUNC1(c);

        if (!i)
                return;

        first = FUNC4(c->by_key, i->key);
        FUNC0(by_key, first, i);

        if (first)
                FUNC2(FUNC6(c->by_key, first->key, first) >= 0);
        else
                FUNC5(c->by_key, i->key);

        FUNC7(c->by_expiry, i, &i->prioq_idx);

        FUNC3(i);
}