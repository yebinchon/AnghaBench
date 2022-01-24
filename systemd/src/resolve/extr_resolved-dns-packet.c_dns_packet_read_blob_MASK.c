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
typedef  void DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,size_t,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 

int FUNC3(DnsPacket *p, void *d, size_t sz, size_t *start) {
        const void *q;
        int r;

        FUNC0(p);
        FUNC0(d);

        r = FUNC1(p, sz, &q, start);
        if (r < 0)
                return r;

        FUNC2(d, q, sz);
        return 0;
}