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
typedef  int ssize_t ;
struct TYPE_4__ {size_t i_buffer; size_t p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(block_t **restrict pp,
                                    void *buf, size_t len)
{
    block_t *block = *pp;

    if (block == NULL)
        return -1;

    if (len > block->i_buffer)
        len = block->i_buffer;

    if (buf != NULL)
        FUNC2(buf, block->p_buffer, len);

    block->p_buffer += len;
    block->i_buffer -= len;

    if (block->i_buffer == 0)
    {
        FUNC0(block);
        *pp = NULL;
    }

    return FUNC1(len > 0) ? (ssize_t)len : -1;
}