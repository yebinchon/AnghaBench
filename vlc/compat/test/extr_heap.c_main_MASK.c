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

/* Variables and functions */
 size_t alignc ; 
 void* FUNC0 (size_t,size_t) ; 
 size_t* alignv ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 

int FUNC4(void)
{
    void *p;

    /* aligned_alloc() */

    for (size_t i = 0; i < alignc; i++) {
        size_t align = alignv[i];

        FUNC1((align & (align - 1)) == 0); /* must be a power of two */

        p = FUNC0(alignv[i], 0);
        FUNC2(p); /* must free {aligned_,c,m,c,re}alloc() allocations */

        for (size_t j = 0; j < alignc; j++) {
             size_t size = alignv[j];

             if (size < align)
                 continue; /* size must be a multiple of alignment */

             p = FUNC0(align, size);
             FUNC1(p != NULL); /* small non-zero bytes allocation */
             FUNC1(((uintptr_t)p & (align - 1)) == 0);
             FUNC2(p);
        }
    }

    /* posix_memalign() */

    for (size_t i = 0; i < 21; i++) {
        size_t align = (size_t)1 << i;

        FUNC3(align, 0);
        FUNC3(align, 1);
        FUNC3(align, align - 1);
        FUNC3(align, align);
        FUNC3(align, align * 2);
    }

    return 0;
}