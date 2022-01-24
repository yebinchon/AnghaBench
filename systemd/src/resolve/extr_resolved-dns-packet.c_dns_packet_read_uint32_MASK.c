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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  DnsPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 

int FUNC3(DnsPacket *p, uint32_t *ret, size_t *start) {
        const void *d;
        int r;

        FUNC0(p);

        r = FUNC1(p, sizeof(uint32_t), &d, start);
        if (r < 0)
                return r;

        *ret = FUNC2(d);

        return 0;
}