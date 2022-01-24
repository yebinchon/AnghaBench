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
typedef  int mem_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 void* FUNC1 (int) ; 

void *
FUNC2(mem_size_t count, mem_size_t size)
{
    void *mem = FUNC1(count * size);
    
    if (!mem) return NULL;
    
    FUNC0(mem, count * size);
    
    return mem;
}