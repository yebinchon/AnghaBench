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
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static ssize_t FUNC5( sout_access_out_t *p_access, block_t *p_buffer )
{
    int *fdp = p_access->p_sys, fd = *fdp;
    size_t i_write = 0;

    while( p_buffer )
    {
        ssize_t val = FUNC4(fd, p_buffer->p_buffer, p_buffer->i_buffer);
        if (val <= 0)
        {
            if (errno == EINTR)
                continue;
            FUNC0 (p_buffer);
            FUNC2( p_access, "cannot write: %s", FUNC3(errno) );
            return -1;
        }

        if ((size_t)val >= p_buffer->i_buffer)
        {
            block_t *p_next = p_buffer->p_next;
            FUNC1 (p_buffer);
            p_buffer = p_next;
        }
        else
        {
            p_buffer->p_buffer += val;
            p_buffer->i_buffer -= val;
        }
        i_write += val;
    }
    return i_write;
}