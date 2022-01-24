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
 int ENOMEM ; 
 int SIZE_MAX ; 
 int FUNC0 (size_t) ; 
 int errno ; 
 void* FUNC1 (size_t,size_t) ; 

int FUNC2(void **ptr, size_t align, size_t size)
{
    int val = FUNC0(align);
    if (val)
        return val;

    /* Unlike posix_memalign(), legacy memalign() requires that size be a
     * multiple of align.
     */
    if (size > (SIZE_MAX / 2))
        return ENOMEM;

    size += (-size) & (align - 1);

    int saved_errno = errno;
    void *p = FUNC1(align, size);
    if (p == NULL) {
        val = errno;
        errno = saved_errno;
        return val;
    }

    *ptr = p;
    return 0;
}