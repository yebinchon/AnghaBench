#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_8__ {int* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_9__ {size_t i_buffer; int /*<<< orphan*/  p_buffer; struct TYPE_9__* p_next; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ssize_t FUNC6(sout_access_out_t *access, block_t *block)
{
    int *fdp = access->p_sys, fd = *fdp;
    ssize_t total = 0;

    while (block != NULL)
    {
        if (block->i_buffer == 0)
        {
            block_t *next = block->p_next;
            FUNC2(block);
            block = next;
            continue;
        }

        /* TODO: vectorized I/O with writev() */
        ssize_t val = FUNC5(fd, block->p_buffer, block->i_buffer);
        if (val < 0)
        {
            if (errno == EINTR)
                continue;

            FUNC1(block);
            FUNC3(access, "cannot write: %s", FUNC4(errno));
            total = -1;
            break;
        }

        total += val;

        FUNC0((size_t)val <= block->i_buffer);
        block->p_buffer += val;
        block->i_buffer -= val;
    }

    return total;
}