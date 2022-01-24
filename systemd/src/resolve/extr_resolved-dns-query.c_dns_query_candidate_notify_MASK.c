#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int error_code; int /*<<< orphan*/  query; scalar_t__ search_domain; } ;
typedef  scalar_t__ DnsTransactionState ;
typedef  TYPE_1__ DnsQueryCandidate ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ DNS_TRANSACTION_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

void FUNC8(DnsQueryCandidate *c) {
        DnsTransactionState state;
        int r;

        FUNC1(c);

        state = FUNC5(c);

        if (FUNC0(state))
                return;

        if (state != DNS_TRANSACTION_SUCCESS && c->search_domain) {

                r = FUNC3(c);
                if (r < 0)
                        goto fail;

                if (r > 0) {
                        /* OK, there's another search domain to try, let's do so. */

                        r = FUNC4(c);
                        if (r < 0)
                                goto fail;

                        if (r > 0) {
                                /* New transactions where queued. Start them and wait */

                                r = FUNC2(c);
                                if (r < 0)
                                        goto fail;

                                return;
                        }
                }

        }

        FUNC6(c->query);
        return;

fail:
        FUNC7(r, "Failed to follow search domains: %m");
        c->error_code = r;
        FUNC6(c->query);
}