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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_6__ {scalar_t__ i_descriptions_start; int /*<<< orphan*/  i_num_remainder_frames; int /*<<< orphan*/  i_num_priming_frames; int /*<<< orphan*/  i_num_valid_frames; int /*<<< orphan*/  i_num_packets; } ;
struct TYPE_8__ {TYPE_1__ packet_table; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    const uint8_t *p_peek;

    if ( FUNC3( p_demux->s, &p_peek, 8 + 8 + 4 + 4 ) < ( 8 + 8 + 4 + 4 ))
    {
        FUNC2( p_demux, "Couldn't peek packet descriptions" );
        return VLC_EGENERIC;
    }

    if( FUNC1( p_peek, &p_sys->packet_table.i_num_packets ))
    {
        FUNC2( p_demux, "Invalid packet table: i_num_packets is negative.");
        return VLC_EGENERIC;
    }
    if( FUNC1( p_peek + 8, &p_sys->packet_table.i_num_valid_frames ))
    {
        FUNC2( p_demux, "Invalid packet table: i_num_valid_frames is negative.");
        return VLC_EGENERIC;
    }
    if( FUNC0( p_peek + 16, &p_sys->packet_table.i_num_priming_frames ))
    {
        FUNC2( p_demux, "Invalid packet table: i_num_priming_frames is negative.");
        return VLC_EGENERIC;
    }
    if( FUNC0( p_peek + 20, &p_sys->packet_table.i_num_remainder_frames ))
    {
        FUNC2( p_demux, "Invalid packet table: i_num_remainder_frames is negative.");
        return VLC_EGENERIC;
    }

    p_sys->packet_table.i_descriptions_start = FUNC4( p_demux->s ) + 24;

    return VLC_SUCCESS;
}