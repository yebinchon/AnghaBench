#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* scope; TYPE_1__* query; int /*<<< orphan*/  search_domain; int /*<<< orphan*/  transactions; } ;
struct TYPE_11__ {int /*<<< orphan*/  query_candidates; } ;
struct TYPE_10__ {int /*<<< orphan*/  candidates; } ;
typedef  TYPE_3__ DnsQueryCandidate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  candidates_by_query ; 
 int /*<<< orphan*/  candidates_by_scope ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

DnsQueryCandidate* FUNC5(DnsQueryCandidate *c) {

        if (!c)
                return NULL;

        FUNC1(c);

        FUNC4(c->transactions);
        FUNC2(c->search_domain);

        if (c->query)
                FUNC0(candidates_by_query, c->query->candidates, c);

        if (c->scope)
                FUNC0(candidates_by_scope, c->scope->query_candidates, c);

        return FUNC3(c);
}