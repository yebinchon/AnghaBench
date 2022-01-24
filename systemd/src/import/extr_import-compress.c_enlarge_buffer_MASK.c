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
 size_t FUNC0 (int,size_t) ; 
 void* FUNC1 (void*,size_t) ; 

__attribute__((used)) static int FUNC2(void **buffer, size_t *buffer_size, size_t *buffer_allocated) {
        size_t l;
        void *p;

        if (*buffer_allocated > *buffer_size)
                return 0;

        l = FUNC0(16*1024U, (*buffer_size * 2));
        p = FUNC1(*buffer, l);
        if (!p)
                return -ENOMEM;

        *buffer = p;
        *buffer_allocated = l;

        return 1;
}