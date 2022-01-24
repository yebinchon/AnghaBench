#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_4__ {int /*<<< orphan*/  dts; } ;
typedef  TYPE_1__ logical_stream_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  date_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

vlc_tick_t FUNC3( const logical_stream_t *p_stream, int64_t i_sample, bool b_start )
{
    i_sample = FUNC0( p_stream, i_sample, b_start );
    if( i_sample < 0 )
        return VLC_TICK_INVALID;

    date_t d = p_stream->dts;
    FUNC2(&d, VLC_TICK_0);
    return FUNC1( &d, i_sample );
}