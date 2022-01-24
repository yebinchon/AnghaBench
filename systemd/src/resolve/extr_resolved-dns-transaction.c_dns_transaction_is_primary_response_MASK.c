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
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ DnsTransaction ;
typedef  TYPE_1__ DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(DnsTransaction *t, DnsResourceRecord *rr) {
        int r;

        FUNC0(t);
        FUNC0(rr);

        /* Check if the specified RR is the "primary" response,
         * i.e. either matches the question precisely or is a
         * CNAME/DNAME for it. */

        r = FUNC2(t->key, rr, NULL);
        if (r != 0)
                return r;

        return FUNC1(t->key, rr->key, NULL);
}