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
typedef  void* DnsPacket ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int FUNC1 (void**,size_t,void const**,size_t*) ; 
 void* FUNC2 (void const*,size_t) ; 

__attribute__((used)) static int FUNC3(
                DnsPacket *p, size_t size,
                void **ret, size_t *ret_size,
                size_t *ret_start) {

        const void *src;
        size_t start;
        int r;

        FUNC0(p);
        FUNC0(ret);

        r = FUNC1(p, size, &src, &start);
        if (r < 0)
                return r;

        if (size <= 0)
                *ret = NULL;
        else {
                void *copy;

                copy = FUNC2(src, size);
                if (!copy)
                        return -ENOMEM;

                *ret = copy;
        }

        if (ret_size)
                *ret_size = size;
        if (ret_start)
                *ret_start = start;

        return 0;
}