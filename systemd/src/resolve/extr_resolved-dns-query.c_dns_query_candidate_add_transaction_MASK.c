#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* query; int /*<<< orphan*/  clamp_ttl; int /*<<< orphan*/  notify_query_candidates; int /*<<< orphan*/  transactions; int /*<<< orphan*/  notify_query_candidates_done; int /*<<< orphan*/  scope; } ;
struct TYPE_16__ {int /*<<< orphan*/  clamp_ttl; } ;
typedef  TYPE_2__ DnsTransaction ;
typedef  TYPE_2__ DnsResourceKey ;
typedef  TYPE_2__ DnsQueryCandidate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__**,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(DnsQueryCandidate *c, DnsResourceKey *key) {
        DnsTransaction *t;
        int r;

        FUNC0(c);
        FUNC0(key);

        t = FUNC1(c->scope, key, true);
        if (!t) {
                r = FUNC3(&t, c->scope, key);
                if (r < 0)
                        return r;
        } else {
                if (FUNC4(c->transactions, t))
                        return 0;
        }

        r = FUNC5(&c->transactions, NULL);
        if (r < 0)
                goto gc;

        r = FUNC5(&t->notify_query_candidates, NULL);
        if (r < 0)
                goto gc;

        r = FUNC5(&t->notify_query_candidates_done, NULL);
        if (r < 0)
                goto gc;

        r = FUNC6(t->notify_query_candidates, c);
        if (r < 0)
                goto gc;

        r = FUNC6(c->transactions, t);
        if (r < 0) {
                (void) FUNC7(t->notify_query_candidates, c);
                goto gc;
        }

        t->clamp_ttl = c->query->clamp_ttl;
        return 1;

gc:
        FUNC2(t);
        return r;
}