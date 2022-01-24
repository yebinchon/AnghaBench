#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ dnssec_mode; } ;
struct TYPE_11__ {scalar_t__ answer_dnssec_result; scalar_t__ n_picked_servers; scalar_t__ answer_rcode; int answer_errno; int /*<<< orphan*/  server; TYPE_9__* scope; } ;
typedef  TYPE_1__ DnsTransaction ;

/* Variables and functions */
 scalar_t__ DNSSEC_INCOMPATIBLE_SERVER ; 
 int /*<<< orphan*/  DNSSEC_UNSIGNED ; 
 int /*<<< orphan*/  DNSSEC_VALIDATED ; 
 scalar_t__ DNSSEC_YES ; 
 scalar_t__ DNS_RCODE_SUCCESS ; 
 int /*<<< orphan*/  DNS_TRANSACTION_DNSSEC_FAILED ; 
 int /*<<< orphan*/  DNS_TRANSACTION_ERRNO ; 
 int /*<<< orphan*/  DNS_TRANSACTION_INVALID_REPLY ; 
 int /*<<< orphan*/  DNS_TRANSACTION_RCODE_FAILURE ; 
 int /*<<< orphan*/  DNS_TRANSACTION_SUCCESS ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  _DNSSEC_RESULT_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(DnsTransaction *t) {
        int r;

        FUNC1(t);

        /* Are there ongoing DNSSEC transactions? If so, let's wait for them. */
        r = FUNC6(t);
        if (r < 0)
                goto fail;
        if (r == 0) /* We aren't ready yet (or one of our auxiliary transactions failed, and we shouldn't validate now */
                return;

        /* See if we learnt things from the additional DNSSEC transactions, that we didn't know before, and better
         * restart the lookup immediately. */
        r = FUNC7(t);
        if (r < 0)
                goto fail;
        if (r > 0) /* Transaction got restarted... */
                return;

        /* All our auxiliary DNSSEC transactions are complete now. Try
         * to validate our RRset now. */
        r = FUNC9(t);
        if (r == -EBADMSG) {
                FUNC5(t, DNS_TRANSACTION_INVALID_REPLY);
                return;
        }
        if (r < 0)
                goto fail;

        if (t->answer_dnssec_result == DNSSEC_INCOMPATIBLE_SERVER &&
            t->scope->dnssec_mode == DNSSEC_YES) {

                /*  We are not in automatic downgrade mode, and the server is bad. Let's try a different server, maybe
                 *  that works. */

                if (t->n_picked_servers < FUNC2(t->scope)) {
                        /* We tried fewer servers on this transaction than we know, let's try another one then */
                        FUNC8(t, true);
                        return;
                }

                /* OK, let's give up, apparently all servers we tried didn't work. */
                FUNC5(t, DNS_TRANSACTION_DNSSEC_FAILED);
                return;
        }

        if (!FUNC0(t->answer_dnssec_result,
                    _DNSSEC_RESULT_INVALID,        /* No DNSSEC validation enabled */
                    DNSSEC_VALIDATED,              /* Answer is signed and validated successfully */
                    DNSSEC_UNSIGNED,               /* Answer is right-fully unsigned */
                    DNSSEC_INCOMPATIBLE_SERVER)) { /* Server does not do DNSSEC (Yay, we are downgrade attack vulnerable!) */
                FUNC5(t, DNS_TRANSACTION_DNSSEC_FAILED);
                return;
        }

        if (t->answer_dnssec_result == DNSSEC_INCOMPATIBLE_SERVER)
                FUNC3(t->server);

        FUNC4(t);

        if (t->answer_rcode == DNS_RCODE_SUCCESS)
                FUNC5(t, DNS_TRANSACTION_SUCCESS);
        else
                FUNC5(t, DNS_TRANSACTION_RCODE_FAILURE);

        return;

fail:
        t->answer_errno = -r;
        FUNC5(t, DNS_TRANSACTION_ERRNO);
}