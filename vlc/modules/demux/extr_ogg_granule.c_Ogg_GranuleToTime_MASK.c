#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  logical_stream_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 

vlc_tick_t FUNC4( const logical_stream_t *p_stream, int64_t i_granule,
                           bool b_start, bool b_pts )
{
    if( !FUNC0( p_stream, i_granule ) )
        return VLC_TICK_INVALID;

    int64_t i_sample = FUNC1( p_stream, i_granule );
    if( b_pts )
    {
        int64_t i_delta = FUNC2( p_stream, i_granule );
        if( i_delta != -1 )
            i_sample += i_delta;
    }
    return FUNC3( p_stream, i_sample, b_start );
}