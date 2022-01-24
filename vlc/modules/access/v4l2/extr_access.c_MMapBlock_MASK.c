#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_pts; } ;
typedef  TYPE_2__ block_t ;
struct TYPE_11__ {int /*<<< orphan*/  block_flags; int /*<<< orphan*/  bufv; int /*<<< orphan*/  fd; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static block_t *FUNC4 (stream_t *access, bool *restrict eof)
{
    access_sys_t *sys = access->p_sys;

    if (FUNC0 (access))
        return NULL;

    block_t *block = FUNC1 (FUNC2(access), sys->fd, sys->bufv);
    if( block != NULL )
    {
        block->i_pts = block->i_dts = FUNC3();
        block->i_flags |= sys->block_flags;
    }
    (void) eof;
    return block;
}