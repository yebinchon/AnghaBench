#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_3__ {scalar_t__ i_pause_date; int b_paused; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  i_cmd_delay; int /*<<< orphan*/  p_out; } ;
typedef  TYPE_1__ ts_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( ts_thread_t *p_ts, bool b_source_paused, bool b_paused, vlc_tick_t i_date )
{
    FUNC3( &p_ts->lock );

    int i_ret;
    if( b_paused )
    {
        FUNC0( !b_source_paused );
        i_ret = FUNC1( p_ts->p_out, true, true, i_date );
    }
    else
    {
        i_ret = FUNC1( p_ts->p_out, false, false, i_date );
    }

    if( !i_ret )
    {
        if( !b_paused )
        {
            FUNC0( p_ts->i_pause_date > 0 );

            p_ts->i_cmd_delay += i_date - p_ts->i_pause_date;
        }

        p_ts->b_paused = b_paused;
        p_ts->i_pause_date = i_date;

        FUNC2( &p_ts->wait );
    }
    FUNC4( &p_ts->lock );
    return i_ret;
}