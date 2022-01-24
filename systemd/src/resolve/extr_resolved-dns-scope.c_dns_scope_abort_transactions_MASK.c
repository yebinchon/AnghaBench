#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* transactions; } ;
struct TYPE_7__ {int /*<<< orphan*/  block_gc; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ DnsTransaction ;
typedef  TYPE_2__ DnsScope ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_TRANSACTION_ABORTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(DnsScope *s) {
        FUNC1(s);

        while (s->transactions) {
                DnsTransaction *t = s->transactions;

                /* Abort the transaction, but make sure it is not
                 * freed while we still look at it */

                t->block_gc++;
                if (FUNC0(t->state))
                        FUNC2(t, DNS_TRANSACTION_ABORTED);
                t->block_gc--;

                FUNC3(t);
        }
}