#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_11__ {int i_height; int i_width; scalar_t__ i_incr; int /*<<< orphan*/  i_next_date; TYPE_9__* p_audios; scalar_t__ i_telx_count; scalar_t__ p_y; scalar_t__ b_vbi; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_12__ {int /*<<< orphan*/ * p_es; scalar_t__ i_group; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_9__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int MAX_AUDIOS ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( p_sys->b_vbi )
    {
        FUNC3( p_demux );

        if ( p_sys->i_height == 576 )
        {
            /* For PAL, erase first half of line 23, last half of line 623,
             * and line 624 ; no need to erase chrominance */
            FUNC6( p_sys->p_y, 0, p_sys->i_width / 2 );
            FUNC6( p_sys->p_y + p_sys->i_width * 574 + p_sys->i_width / 2,
                        0, p_sys->i_width * 3 / 2 );
        }
    }

    if ( p_sys->i_telx_count )
        if ( FUNC1( p_demux ) != VLC_SUCCESS )
            return VLC_ENOMEM;

    for ( int i = 0; i < MAX_AUDIOS; i++ )
    {
        if ( p_sys->p_audios[i].i_group && p_sys->p_audios[i].p_es != NULL )
            if( FUNC0( p_demux, &p_sys->p_audios[i] ) != VLC_SUCCESS )
                return VLC_EGENERIC;
    }

    FUNC2( p_demux );

    FUNC5( p_demux->out, p_sys->i_next_date );
    p_sys->i_next_date += p_sys->i_incr;

    if( FUNC4( p_demux ) != VLC_SUCCESS )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}