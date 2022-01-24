#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  notify_transactions_done; int /*<<< orphan*/  notify_transactions; int /*<<< orphan*/  dnssec_transactions; } ;
typedef  TYPE_1__ DnsTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(DnsTransaction *t) {
        DnsTransaction *z;

        FUNC0(t);

        while ((z = FUNC3(t->dnssec_transactions))) {
                FUNC2(z->notify_transactions, t);
                FUNC2(z->notify_transactions_done, t);
                FUNC1(z);
        }
}