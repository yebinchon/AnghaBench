#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_10__ {size_t size; int type; int class; } ;
typedef  TYPE_1__ DnsResourceKey ;
typedef  TYPE_1__ const DnsPacket ;
typedef  int DnsAnswerFlags ;

/* Variables and functions */
 int const DNS_ANSWER_CACHE_FLUSH ; 
 int MDNS_RR_CACHE_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__ const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 

int FUNC5(DnsPacket *p, const DnsResourceKey *k, const DnsAnswerFlags flags, size_t *start) {
        size_t saved_size;
        uint16_t class;
        int r;

        FUNC0(p);
        FUNC0(k);

        saved_size = p->size;

        r = FUNC1(p, FUNC4(k), true, true, NULL);
        if (r < 0)
                goto fail;

        r = FUNC2(p, k->type, NULL);
        if (r < 0)
                goto fail;

        class = flags & DNS_ANSWER_CACHE_FLUSH ? k->class | MDNS_RR_CACHE_FLUSH : k->class;
        r = FUNC2(p, class, NULL);
        if (r < 0)
                goto fail;

        if (start)
                *start = saved_size;

        return 0;

fail:
        FUNC3(p, saved_size);
        return r;
}