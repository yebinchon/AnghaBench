#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  jitter ;
struct TYPE_11__ {scalar_t__ conflict_event_source; TYPE_1__* manager; int /*<<< orphan*/  key; int /*<<< orphan*/  conflict_queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ DnsScope ;
typedef  TYPE_2__ DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLMNR_JITTER_INTERVAL_USEC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  dns_resource_key_hash_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_conflict_dispatch ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*) ; 

int FUNC13(DnsScope *scope, DnsResourceRecord *rr) {
        usec_t jitter;
        int r;

        FUNC1(scope);
        FUNC1(rr);

        /* We don't send these queries immediately. Instead, we queue
         * them, and send them after some jitter delay. */
        r = FUNC8(&scope->conflict_queue, &dns_resource_key_hash_ops);
        if (r < 0) {
                FUNC6();
                return r;
        }

        /* We only place one RR per key in the conflict
         * messages, not all of them. That should be enough to
         * indicate where there might be a conflict */
        r = FUNC9(scope->conflict_queue, rr->key, rr);
        if (FUNC0(r, 0, -EEXIST))
                return 0;
        if (r < 0)
                return FUNC5(r, "Failed to queue conflicting RR: %m");

        FUNC3(rr->key);
        FUNC4(rr);

        if (scope->conflict_event_source)
                return 0;

        FUNC10(&jitter, sizeof(jitter));
        jitter %= LLMNR_JITTER_INTERVAL_USEC;

        r = FUNC11(scope->manager->event,
                              &scope->conflict_event_source,
                              FUNC2(),
                              FUNC7(FUNC2()) + jitter,
                              LLMNR_JITTER_INTERVAL_USEC,
                              on_conflict_dispatch, scope);
        if (r < 0)
                return FUNC5(r, "Failed to add conflict dispatch event: %m");

        (void) FUNC12(scope->conflict_event_source, "scope-conflict");

        return 0;
}