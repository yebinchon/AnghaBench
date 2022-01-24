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
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  block_heap_cbs ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

block_t *FUNC3 (void *addr, size_t length)
{
    block_t *block = FUNC2 (sizeof (*block));
    if (block == NULL)
    {
        FUNC1 (addr);
        return NULL;
    }

    return FUNC0(block, &block_heap_cbs, addr, length);
}