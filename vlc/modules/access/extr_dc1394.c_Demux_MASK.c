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
struct TYPE_9__ {int /*<<< orphan*/  p_es_video; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_pts; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VLC_HARD_MIN_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t *p_blockv = NULL;

    /* Try grabbing video frame */
    p_blockv = FUNC0( p_demux );

    if( !p_blockv )
    {
        /* Sleep so we do not consume all the cpu, 10ms seems
         * like a good value (100fps)
         */
        FUNC3( VLC_HARD_MIN_SLEEP );
        return 1;
    }

    if( p_blockv )
    {
        FUNC2( p_demux->out, p_blockv->i_pts );
        FUNC1( p_demux->out, p_sys->p_es_video, p_blockv );
    }
    return 1;
}