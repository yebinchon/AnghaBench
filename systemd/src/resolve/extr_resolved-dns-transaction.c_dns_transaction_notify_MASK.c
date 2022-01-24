#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ state; } ;
typedef  TYPE_1__ DnsTransaction ;

/* Variables and functions */
 scalar_t__ DNS_TRANSACTION_VALIDATING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(DnsTransaction *t, DnsTransaction *source) {
        FUNC0(t);
        FUNC0(source);

        /* Invoked whenever any of our auxiliary DNSSEC transactions completed its work. If the state is still PENDING,
           we are still in the loop that adds further DNSSEC transactions, hence don't check if we are ready yet. If
           the state is VALIDATING however, we should check if we are complete now. */

        if (t->state == DNS_TRANSACTION_VALIDATING)
                FUNC1(t);
}