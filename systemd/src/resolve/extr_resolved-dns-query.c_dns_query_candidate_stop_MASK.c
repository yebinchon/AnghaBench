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
struct TYPE_9__ {int /*<<< orphan*/  transactions; } ;
struct TYPE_8__ {int /*<<< orphan*/  notify_query_candidates_done; int /*<<< orphan*/  notify_query_candidates; } ;
typedef  TYPE_1__ DnsTransaction ;
typedef  TYPE_2__ DnsQueryCandidate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(DnsQueryCandidate *c) {
        DnsTransaction *t;

        FUNC0(c);

        while ((t = FUNC3(c->transactions))) {
                FUNC2(t->notify_query_candidates, c);
                FUNC2(t->notify_query_candidates_done, c);
                FUNC1(t);
        }
}