#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_frame_samples; int /*<<< orphan*/  pts; int /*<<< orphan*/  p_es; int /*<<< orphan*/  i_frame_size; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys  = p_demux->p_sys;
    block_t     *p_block;

    p_block = FUNC4( p_demux->s, p_sys->i_frame_size );
    if( p_block == NULL )
        return VLC_DEMUXER_EOF;

    p_block->i_dts = p_block->i_pts = FUNC0( &p_sys->pts );

    FUNC3( p_demux->out, p_block->i_pts );
    FUNC2( p_demux->out, p_sys->p_es, p_block );

    FUNC1( &p_sys->pts, p_sys->i_frame_samples );

    return VLC_DEMUXER_SUCCESS;
}