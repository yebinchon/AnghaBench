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
struct TYPE_8__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {scalar_t__ i_frame_length; void* i_still_end; scalar_t__ b_still; int /*<<< orphan*/  p_es; void* i_time; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {void* i_pts; void* i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 void* FUNC4 () ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux, int i )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t     *p_block;

    if( ( p_block = FUNC3( p_demux->s, i ) ) == NULL )
    {
        FUNC2( p_demux, "cannot read data" );
        return VLC_DEMUXER_EOF;
    }

    if( p_sys->i_frame_length != VLC_TICK_INVALID )
    {
        p_block->i_pts = p_sys->i_time;
        p_sys->i_time += p_sys->i_frame_length;
    }
    else
    {
        p_block->i_pts = FUNC4();
    }
    p_block->i_dts = p_block->i_pts;

    FUNC1( p_demux->out, p_block->i_pts );
    FUNC0( p_demux->out, p_sys->p_es, p_block );

    if( p_sys->b_still )
        p_sys->i_still_end = FUNC4() + p_sys->i_frame_length;

    return VLC_DEMUXER_SUCCESS;
}