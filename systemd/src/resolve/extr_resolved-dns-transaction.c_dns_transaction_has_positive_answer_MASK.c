#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  key; int /*<<< orphan*/  answer; } ;
typedef  TYPE_1__ DnsTransaction ;
typedef  int /*<<< orphan*/  DnsAnswerFlags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(DnsTransaction *t, DnsAnswerFlags *flags) {
        int r;

        FUNC0(t);

        /* Checks whether the answer is positive, i.e. either a direct
         * answer to the question, or a CNAME/DNAME for it */

        r = FUNC2(t->answer, t->key, flags);
        if (r != 0)
                return r;

        r = FUNC1(t->answer, t->key, NULL, flags);
        if (r != 0)
                return r;

        return false;
}