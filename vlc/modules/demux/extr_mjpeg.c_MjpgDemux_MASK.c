#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {scalar_t__ i_still_end; int i_data_peeked; int* p_peek; scalar_t__ i_level; scalar_t__ b_still; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    int i;

    if( p_sys->b_still && p_sys->i_still_end != VLC_TICK_INVALID )
    {
        /* Still frame, wait until the pause delay is gone */
        FUNC4( p_sys->i_still_end );
        p_sys->i_still_end = VLC_TICK_INVALID;
        return VLC_DEMUXER_SUCCESS;
    }

    if( !FUNC0( p_demux, true ) )
    {
        FUNC3( p_demux, "cannot peek data" );
        return VLC_DEMUXER_EOF;
    }
    if( p_sys->i_data_peeked < 4 )
    {
        FUNC3( p_demux, "data shortage" );
        return VLC_DEMUXER_EOF;
    }
    i = 3;
FIND_NEXT_EOI:
    while( !( p_sys->p_peek[i-1] == 0xFF && p_sys->p_peek[i] == 0xD9 ) )
    {
        if( p_sys->p_peek[i-1] == 0xFF && p_sys->p_peek[i] == 0xD9  )
        {
            p_sys->i_level++;
            FUNC2( p_demux, "we found another JPEG SOI at %d", i );
        }
        i++;
        if( i >= p_sys->i_data_peeked )
        {
            FUNC2( p_demux, "did not find JPEG EOI in %d bytes",
                     p_sys->i_data_peeked );
            if( !FUNC0( p_demux, false ) )
            {
                FUNC3( p_demux, "no more data is available at the moment" );
                return VLC_DEMUXER_EOF;
            }
        }
    }
    i++;

    FUNC2( p_demux, "JPEG EOI detected at %d", i );
    p_sys->i_level--;

    if( p_sys->i_level > 0 )
        goto FIND_NEXT_EOI;
    return FUNC1( p_demux, i );
}