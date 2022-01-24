#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  p_es; int /*<<< orphan*/  i_pts_backup; int /*<<< orphan*/  i_dts_backup; } ;
typedef  TYPE_2__ mp4_track_t ;
struct TYPE_15__ {int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_16__ {TYPE_1__* p_demux; } ;
typedef  TYPE_4__ asf_packet_sys_t ;
struct TYPE_13__ {int /*<<< orphan*/  out; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4( asf_packet_sys_t *p_packetsys, uint8_t i_stream_number,
                         block_t **pp_frame )
{
    mp4_track_t *p_track = FUNC0( p_packetsys, i_stream_number );
    if ( !p_track )
    {
        FUNC2( *pp_frame );
    }
    else
    {
        block_t *p_gather = FUNC1( *pp_frame );
        p_gather->i_dts = p_track->i_dts_backup;
        p_gather->i_pts = p_track->i_pts_backup;
        FUNC3( p_packetsys->p_demux->out, p_track->p_es, p_gather );
    }

    *pp_frame = NULL;
}