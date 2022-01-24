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
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t) ; 

void *
FUNC3(void *mem, size_t size)
{
    void* new_mem;
    
    /* realloc() with a NULL mem pointer acts like a call to malloc() */
    if (mem == NULL) {
        return FUNC2(size);
    }
    
    /* realloc() with a size 0 acts like a call to free() */
    if (size == 0) {
        FUNC1(mem);
        return NULL;
    }
    
    /* Allocate the new buffer first */
    new_mem = FUNC2(size);
    if (new_mem == NULL) {
        /* The old buffer is still intact */
        return NULL;
    }
    
    /* Copy the data over */
    FUNC0(new_mem, mem, size);
    
    /* Deallocate the old buffer */
    FUNC1(mem);

    /* Return the newly allocated block */
    return new_mem;
}