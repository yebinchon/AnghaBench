#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct TYPE_4__ {size_t block_cnt; int /*<<< orphan*/  mark; scalar_t__ offset; scalar_t__ last_block; int /*<<< orphan*/ * blocks; int /*<<< orphan*/  custom_blocks; } ;
typedef  TYPE_1__ heap_pool_t ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ARENA_FREE_FILLER ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct list*) ; 
 struct list* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct list*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(heap_pool_t *heap)
{
    struct list *tmp;

    if(!heap)
        return;

    while((tmp = FUNC3(&heap->custom_blocks, &heap->custom_blocks))) {
        FUNC4(tmp);
        FUNC2(tmp);
    }

    if(FUNC0(heap)) {
        DWORD i;

        for(i=0; i < heap->block_cnt; i++)
            FUNC5(heap->blocks[i], ARENA_FREE_FILLER, FUNC1(i));
    }

    heap->last_block = heap->offset = 0;
    heap->mark = FALSE;
}