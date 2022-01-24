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
struct TYPE_8__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ DnsResourceRecord ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC3(const DnsResourceRecord *x, const DnsResourceRecord *y) {
        int r;

        r = FUNC1(x->key, y->key);
        if (r != 0)
                return r;

        if (FUNC2(x, y))
                return 0;

        /* We still use CMP() here, even though don't implement proper
         * ordering, since the hashtable doesn't need ordering anyway. */
        return FUNC0(x, y);
}