#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 

int FUNC3(DnsPacket *p, const void *d, size_t l, size_t *start) {
        void *q;
        int r;

        FUNC0(p);

        r = FUNC1(p, l, &q, start);
        if (r < 0)
                return r;

        FUNC2(q, d, l);
        return 0;
}