#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_11__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_2__ block_t ;
struct TYPE_12__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  blocksize; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *FUNC7 (stream_t *access, bool *restrict eof)
{
    access_sys_t *sys = access->p_sys;

    if (FUNC0 (access))
        return NULL;

    block_t *block = FUNC1 (sys->blocksize);
    if (FUNC4(block == NULL))
        return NULL;

    ssize_t val = FUNC5 (sys->fd, block->p_buffer, block->i_buffer);
    if (val < 0)
    {
        FUNC2 (block);
        FUNC3 (access, "cannot read buffer: %s", FUNC6(errno));
        *eof = true;
        return NULL;
    }

    block->i_buffer = val;
    return block;
}