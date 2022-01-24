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
struct sltg_data {int size; int allocated; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct sltg_data *block, const void *data, int size)
{
    int new_size = block->size + size;

    if (new_size > block->allocated)
    {
        block->allocated = FUNC0(block->allocated * 2, new_size);
        block->data = FUNC2(block->data, block->allocated);
    }

    FUNC1(block->data + block->size, data, size);
    block->size = new_size;
}