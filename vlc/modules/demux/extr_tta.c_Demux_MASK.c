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
struct TYPE_8__ {size_t i_currentframe; size_t i_totalframes; scalar_t__ p_es; int /*<<< orphan*/ * pi_seektable; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_9__ {scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int TTA_FRAMETIME ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 scalar_t__ VLC_TICK_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t     *p_data;

    if( p_sys->i_currentframe >= p_sys->i_totalframes )
        return VLC_DEMUXER_EOF;

    p_data = FUNC2( p_demux->s,
                               p_sys->pi_seektable[p_sys->i_currentframe] );
    if( p_data == NULL )
        return VLC_DEMUXER_EOF;
    p_data->i_dts = p_data->i_pts = VLC_TICK_0 + FUNC3( p_sys->i_currentframe * TTA_FRAMETIME );

    p_sys->i_currentframe++;

    FUNC1( p_demux->out, p_data->i_dts );
    if( p_sys->p_es )
        FUNC0( p_demux->out, p_sys->p_es, p_data );

    return VLC_DEMUXER_SUCCESS;
}