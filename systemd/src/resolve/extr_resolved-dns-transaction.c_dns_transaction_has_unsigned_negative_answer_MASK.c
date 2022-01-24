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
struct TYPE_6__ {int /*<<< orphan*/  answer; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ DnsTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(DnsTransaction *t) {
        int r;

        FUNC0(t);

        /* Checks whether the answer is negative, and lacks NSEC/NSEC3
         * RRs to prove it */

        r = FUNC3(t, NULL);
        if (r < 0)
                return r;
        if (r > 0)
                return false;

        /* Is this key explicitly listed as a negative trust anchor?
         * If so, it's nothing we need to care about */
        r = FUNC4(t, FUNC2(t->key));
        if (r < 0)
                return r;
        if (r > 0)
                return false;

        /* The answer does not contain any RRs that match to the
         * question. If so, let's see if there are any NSEC/NSEC3 RRs
         * included. If not, the answer is unsigned. */

        r = FUNC1(t->answer);
        if (r < 0)
                return r;
        if (r > 0)
                return false;

        return true;
}