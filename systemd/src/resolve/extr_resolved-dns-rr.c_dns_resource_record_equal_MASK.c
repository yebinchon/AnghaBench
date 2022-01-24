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
typedef  TYPE_1__ DnsResourceRecord ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const*,TYPE_1__ const*) ; 

int FUNC3(const DnsResourceRecord *a, const DnsResourceRecord *b) {
        int r;

        FUNC0(a);
        FUNC0(b);

        if (a == b)
                return 1;

        r = FUNC1(a->key, b->key);
        if (r <= 0)
                return r;

        return FUNC2(a, b);
}