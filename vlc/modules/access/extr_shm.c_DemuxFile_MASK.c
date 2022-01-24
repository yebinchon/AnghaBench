#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_7__ {int /*<<< orphan*/  es; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4 (void *data)
{
    demux_t *demux = data;
    demux_sys_t *sys = demux->p_sys;

    /* Copy frame */
    block_t *block = FUNC0(sys->fd, true);
    if (block == NULL)
        return;
    block->i_pts = block->i_dts = FUNC3 ();

    /* Send block */
    FUNC2(demux->out, block->i_pts);
    FUNC1 (demux->out, sys->es, block);
}