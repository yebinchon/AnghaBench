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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  DnsPacket ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,void const*,size_t) ; 

int FUNC3(DnsPacket *p, const void *s, size_t size, size_t *start) {
        void *d;
        int r;

        FUNC0(p);
        FUNC0(s || size == 0);

        if (size > 255)
                return -E2BIG;

        r = FUNC1(p, 1 + size, &d, start);
        if (r < 0)
                return r;

        ((uint8_t*) d)[0] = (uint8_t) size;

        FUNC2(((uint8_t*) d) + 1, s, size);

        return 0;
}