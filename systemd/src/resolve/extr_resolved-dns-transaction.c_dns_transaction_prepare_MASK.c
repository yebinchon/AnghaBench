#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_19__ {scalar_t__ type; } ;
struct TYPE_18__ {scalar_t__ n_attempts; scalar_t__ answer_rcode; int answer_authenticated; void* answer_source; int /*<<< orphan*/  answer; int /*<<< orphan*/  clamp_ttl; TYPE_3__* key; TYPE_10__* scope; int /*<<< orphan*/  notify_zone_items; int /*<<< orphan*/  start_usec; scalar_t__ tried_stream; } ;
struct TYPE_17__ {int /*<<< orphan*/  trust_anchor; } ;
struct TYPE_16__ {scalar_t__ protocol; scalar_t__ dnssec_mode; int /*<<< orphan*/  cache; int /*<<< orphan*/  zone; TYPE_1__* manager; } ;
typedef  TYPE_2__ DnsTransaction ;

/* Variables and functions */
 scalar_t__ DNSSEC_ALLOW_DOWNGRADE ; 
 scalar_t__ DNS_PROTOCOL_DNS ; 
 scalar_t__ DNS_PROTOCOL_LLMNR ; 
 scalar_t__ DNS_RCODE_SUCCESS ; 
 int /*<<< orphan*/  DNS_TRANSACTION_ATTEMPTS_MAX_REACHED ; 
 void* DNS_TRANSACTION_CACHE ; 
 int /*<<< orphan*/  DNS_TRANSACTION_NETWORK_DOWN ; 
 int /*<<< orphan*/  DNS_TRANSACTION_NO_TRUST_ANCHOR ; 
 int /*<<< orphan*/  DNS_TRANSACTION_RCODE_FAILURE ; 
 int /*<<< orphan*/  DNS_TRANSACTION_SUCCESS ; 
 void* DNS_TRANSACTION_TRUST_ANCHOR ; 
 void* DNS_TRANSACTION_ZONE ; 
 scalar_t__ DNS_TYPE_DS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(DnsTransaction *t, usec_t ts) {
        int r;

        FUNC1(t);

        FUNC12(t);

        if (!FUNC8(t->scope)) {
                FUNC9(t, DNS_TRANSACTION_NETWORK_DOWN);
                return 0;
        }

        if (t->n_attempts >= FUNC0(t->scope->protocol)) {
                FUNC9(t, DNS_TRANSACTION_ATTEMPTS_MAX_REACHED);
                return 0;
        }

        if (t->scope->protocol == DNS_PROTOCOL_LLMNR && t->tried_stream) {
                /* If we already tried via a stream, then we don't
                 * retry on LLMNR. See RFC 4795, Section 2.7. */
                FUNC9(t, DNS_TRANSACTION_ATTEMPTS_MAX_REACHED);
                return 0;
        }

        t->n_attempts++;
        t->start_usec = ts;

        FUNC11(t);
        FUNC10(t);

        /* Check the trust anchor. Do so only on classic DNS, since DNSSEC does not apply otherwise. */
        if (t->scope->protocol == DNS_PROTOCOL_DNS) {
                r = FUNC13(&t->scope->manager->trust_anchor, t->key, &t->answer);
                if (r < 0)
                        return r;
                if (r > 0) {
                        t->answer_rcode = DNS_RCODE_SUCCESS;
                        t->answer_source = DNS_TRANSACTION_TRUST_ANCHOR;
                        t->answer_authenticated = true;
                        FUNC9(t, DNS_TRANSACTION_SUCCESS);
                        return 0;
                }

                if (FUNC4(FUNC5(t->key)) &&
                    t->key->type == DNS_TYPE_DS) {

                        /* Hmm, this is a request for the root DS? A
                         * DS RR doesn't exist in the root zone, and
                         * if our trust anchor didn't know it either,
                         * this means we cannot do any DNSSEC logic
                         * anymore. */

                        if (t->scope->dnssec_mode == DNSSEC_ALLOW_DOWNGRADE) {
                                /* We are in downgrade mode. In this
                                 * case, synthesize an unsigned empty
                                 * response, so that the any lookup
                                 * depending on this one can continue
                                 * assuming there was no DS, and hence
                                 * the root zone was unsigned. */

                                t->answer_rcode = DNS_RCODE_SUCCESS;
                                t->answer_source = DNS_TRANSACTION_TRUST_ANCHOR;
                                t->answer_authenticated = false;
                                FUNC9(t, DNS_TRANSACTION_SUCCESS);
                        } else
                                /* If we are not in downgrade mode,
                                 * then fail the lookup, because we
                                 * cannot reasonably answer it. There
                                 * might be DS RRs, but we don't know
                                 * them, and the DNS server won't tell
                                 * them to us (and even if it would,
                                 * we couldn't validate and trust them. */
                                FUNC9(t, DNS_TRANSACTION_NO_TRUST_ANCHOR);

                        return 0;
                }
        }

        /* Check the zone, but only if this transaction is not used
         * for probing or verifying a zone item. */
        if (FUNC15(t->notify_zone_items)) {

                r = FUNC14(&t->scope->zone, t->key, FUNC7(t->scope), &t->answer, NULL, NULL);
                if (r < 0)
                        return r;
                if (r > 0) {
                        t->answer_rcode = DNS_RCODE_SUCCESS;
                        t->answer_source = DNS_TRANSACTION_ZONE;
                        t->answer_authenticated = true;
                        FUNC9(t, DNS_TRANSACTION_SUCCESS);
                        return 0;
                }
        }

        /* Check the cache, but only if this transaction is not used
         * for probing or verifying a zone item. */
        if (FUNC15(t->notify_zone_items)) {

                /* Before trying the cache, let's make sure we figured out a
                 * server to use. Should this cause a change of server this
                 * might flush the cache. */
                (void) FUNC6(t->scope);

                /* Let's then prune all outdated entries */
                FUNC3(&t->scope->cache);

                r = FUNC2(&t->scope->cache, t->key, t->clamp_ttl, &t->answer_rcode, &t->answer, &t->answer_authenticated);
                if (r < 0)
                        return r;
                if (r > 0) {
                        t->answer_source = DNS_TRANSACTION_CACHE;
                        if (t->answer_rcode == DNS_RCODE_SUCCESS)
                                FUNC9(t, DNS_TRANSACTION_SUCCESS);
                        else
                                FUNC9(t, DNS_TRANSACTION_RCODE_FAILURE);
                        return 0;
                }
        }

        return 1;
}