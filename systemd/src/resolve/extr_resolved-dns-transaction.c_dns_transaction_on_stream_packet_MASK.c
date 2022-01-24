#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ state; int /*<<< orphan*/  block_gc; int /*<<< orphan*/  scope; } ;
typedef  TYPE_1__ DnsTransaction ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_TRANSACTION_INVALID_REPLY ; 
 scalar_t__ DNS_TRANSACTION_PENDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(DnsTransaction *t, DnsPacket *p) {
        FUNC0(t);
        FUNC0(p);

        FUNC3(t);

        if (FUNC1(p) <= 0) {
                FUNC7("Invalid TCP reply packet.");
                FUNC4(t, DNS_TRANSACTION_INVALID_REPLY);
                return 0;
        }

        FUNC2(t->scope, p);

        t->block_gc++;
        FUNC6(t, p);
        t->block_gc--;

        /* If the response wasn't useful, then complete the transition
         * now. After all, we are the worst feature set now with TCP
         * sockets, and there's really no point in retrying. */
        if (t->state == DNS_TRANSACTION_PENDING)
                FUNC4(t, DNS_TRANSACTION_INVALID_REPLY);
        else
                FUNC5(t);

        return 0;
}