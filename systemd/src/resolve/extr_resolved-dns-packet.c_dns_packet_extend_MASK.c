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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {size_t size; size_t allocated; void* _data; } ;
typedef  TYPE_1__ DnsPacket ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 size_t FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC8 (void*,size_t) ; 

__attribute__((used)) static int FUNC9(DnsPacket *p, size_t add, void **ret, size_t *start) {
        FUNC3(p);

        if (p->size + add > p->allocated) {
                size_t a, ms;

                a = FUNC2((p->size + add) * 2);

                ms = FUNC4(p);
                if (a > ms)
                        a = ms;

                if (p->size + add > a)
                        return -EMSGSIZE;

                if (p->_data) {
                        void *d;

                        d = FUNC8(p->_data, a);
                        if (!d)
                                return -ENOMEM;

                        p->_data = d;
                } else {
                        p->_data = FUNC5(a);
                        if (!p->_data)
                                return -ENOMEM;

                        FUNC6(p->_data, (uint8_t*) p + FUNC0(sizeof(DnsPacket)), p->size);
                        FUNC7((uint8_t*) p->_data + p->size, a - p->size);
                }

                p->allocated = a;
        }

        if (start)
                *start = p->size;

        if (ret)
                *ret = (uint8_t*) FUNC1(p) + p->size;

        p->size += add;
        return 0;
}