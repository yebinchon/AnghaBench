#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {scalar_t__ i_next_date; scalar_t__ i_incr; int /*<<< orphan*/  es; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_block;

    if( !p_sys->i_next_date ) p_sys->i_next_date = FUNC3();

    /* Frame skipping if necessary */
    while( FUNC3() >= p_sys->i_next_date + p_sys->i_incr )
        p_sys->i_next_date += p_sys->i_incr;

    FUNC4( p_sys->i_next_date );
    p_block = FUNC2( p_demux );
    if( !p_block )
    {
        p_sys->i_next_date += p_sys->i_incr;
        return 1;
    }

    p_block->i_dts = p_block->i_pts = p_sys->i_next_date;

    FUNC1( p_demux->out, p_block->i_pts );
    FUNC0( p_demux->out, p_sys->es, p_block );

    p_sys->i_next_date += p_sys->i_incr;

    return 1;
}