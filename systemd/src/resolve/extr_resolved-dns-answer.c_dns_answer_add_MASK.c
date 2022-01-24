#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int n_ref; size_t n_rrs; TYPE_1__* items; } ;
struct TYPE_14__ {scalar_t__ ttl; int /*<<< orphan*/  key; } ;
struct TYPE_13__ {int ifindex; int /*<<< orphan*/  flags; TYPE_2__* rr; } ;
typedef  TYPE_2__ DnsResourceRecord ;
typedef  int /*<<< orphan*/  DnsAnswerFlags ;
typedef  TYPE_3__ DnsAnswer ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int FUNC6(DnsAnswer *a, DnsResourceRecord *rr, int ifindex, DnsAnswerFlags flags) {
        size_t i;
        int r;

        FUNC0(rr);

        if (!a)
                return -ENOSPC;
        if (a->n_ref > 1)
                return -EBUSY;

        for (i = 0; i < a->n_rrs; i++) {
                if (a->items[i].ifindex != ifindex)
                        continue;

                r = FUNC2(a->items[i].rr->key, rr->key);
                if (r < 0)
                        return r;
                if (r == 0)
                        continue;

                /* There's already an RR of the same RRset in place! Let's see if the TTLs more or less
                 * match. We don't really care if they match precisely, but we do care whether one is 0 and
                 * the other is not. See RFC 2181, Section 5.2. */
                if ((rr->ttl == 0) != (a->items[i].rr->ttl == 0))
                        return -EINVAL;

                r = FUNC3(a->items[i].rr, rr);
                if (r < 0)
                        return r;
                if (r == 0)
                        continue;

                /* Entry already exists, keep the entry with the higher RR. */
                if (rr->ttl > a->items[i].rr->ttl) {
                        FUNC4(rr);
                        FUNC5(a->items[i].rr);
                        a->items[i].rr = rr;
                }

                a->items[i].flags |= flags;
                return 0;
        }

        return FUNC1(a, rr, ifindex, flags);
}