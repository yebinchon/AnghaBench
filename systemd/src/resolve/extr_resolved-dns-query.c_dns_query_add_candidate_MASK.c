#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; int /*<<< orphan*/  question_idna; } ;
typedef  TYPE_1__ DnsScope ;
typedef  int /*<<< orphan*/  DnsQueryCandidate ;
typedef  TYPE_1__ DnsQuery ;

/* Variables and functions */
 int SD_RESOLVED_NO_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(DnsQuery *q, DnsScope *s) {
        DnsQueryCandidate *c;
        int r;

        FUNC0(q);
        FUNC0(s);

        r = FUNC2(&c, q, s);
        if (r < 0)
                return r;

        /* If this a single-label domain on DNS, we might append a suitable search domain first. */
        if ((q->flags & SD_RESOLVED_NO_SEARCH) == 0 &&
            FUNC6(s, FUNC5(q->question_idna))) {
                /* OK, we need a search domain now. Let's find one for this scope */

                r = FUNC3(c);
                if (r <= 0) /* if there's no search domain, then we won't add any transaction. */
                        goto fail;
        }

        r = FUNC4(c);
        if (r < 0)
                goto fail;

        return 0;

fail:
        FUNC1(c);
        return r;
}