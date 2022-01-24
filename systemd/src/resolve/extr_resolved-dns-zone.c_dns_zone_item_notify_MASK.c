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
struct TYPE_8__ {scalar_t__ block_ready; scalar_t__ state; int /*<<< orphan*/  rr; int /*<<< orphan*/  family; struct TYPE_8__* received; struct TYPE_8__* probe_transaction; int /*<<< orphan*/  destination; int /*<<< orphan*/  sender; TYPE_1__* scope; } ;
struct TYPE_7__ {scalar_t__ protocol; } ;
typedef  TYPE_2__ DnsZoneItem ;

/* Variables and functions */
 scalar_t__ DNS_PROTOCOL_LLMNR ; 
 int /*<<< orphan*/  DNS_TRANSACTION_NULL ; 
 int /*<<< orphan*/  DNS_TRANSACTION_PENDING ; 
 scalar_t__ DNS_TRANSACTION_SUCCESS ; 
 int /*<<< orphan*/  DNS_TRANSACTION_VALIDATING ; 
 scalar_t__ DNS_ZONE_ITEM_ESTABLISHED ; 
 int /*<<< orphan*/  DNS_ZONE_ITEM_VERIFYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(DnsZoneItem *i) {
        FUNC2(i);
        FUNC2(i->probe_transaction);

        if (i->block_ready > 0)
                return;

        if (FUNC1(i->probe_transaction->state, DNS_TRANSACTION_NULL, DNS_TRANSACTION_PENDING, DNS_TRANSACTION_VALIDATING))
                return;

        if (i->probe_transaction->state == DNS_TRANSACTION_SUCCESS) {
                bool we_lost = false;

                /* The probe got a successful reply. If we so far
                 * weren't established we just give up.
                 *
                 * In LLMNR case if we already
                 * were established, and the peer has the
                 * lexicographically larger IP address we continue
                 * and defend it. */

                if (!FUNC1(i->state, DNS_ZONE_ITEM_ESTABLISHED, DNS_ZONE_ITEM_VERIFYING)) {
                        FUNC6("Got a successful probe for not yet established RR, we lost.");
                        we_lost = true;
                } else if (i->probe_transaction->scope->protocol == DNS_PROTOCOL_LLMNR) {
                        FUNC2(i->probe_transaction->received);
                        we_lost = FUNC7(&i->probe_transaction->received->sender, &i->probe_transaction->received->destination, FUNC0(i->probe_transaction->received->family)) < 0;
                        if (we_lost)
                                FUNC6("Got a successful probe reply for an established RR, and we have a lexicographically larger IP address and thus lost.");
                }

                if (we_lost) {
                        FUNC4(i);
                        return;
                }

                FUNC6("Got a successful probe reply, but peer has lexicographically lower IP address and thus lost.");
        }

        FUNC6("Record %s successfully probed.", FUNC8(FUNC3(i->rr)));

        FUNC5(i);
        i->state = DNS_ZONE_ITEM_ESTABLISHED;
}