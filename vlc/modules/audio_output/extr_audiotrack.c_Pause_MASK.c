#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ audio_output_t ;
struct TYPE_6__ {int b_thread_paused; int /*<<< orphan*/  lock; scalar_t__ b_error; } ;
typedef  TYPE_2__ aout_sys_t ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pause ; 
 int /*<<< orphan*/  play ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7( audio_output_t *p_aout, bool b_pause, vlc_tick_t i_date )
{
    aout_sys_t *p_sys = p_aout->sys;
    JNIEnv *env;
    FUNC4( i_date );

    FUNC5( &p_sys->lock );

    if( p_sys->b_error || !( env = FUNC2() ) )
        goto bailout;

    if( b_pause )
    {
        p_sys->b_thread_paused = true;
        FUNC3( pause );
        FUNC1( "pause" );
    } else
    {
        p_sys->b_thread_paused = false;
        FUNC0( env, p_aout );
        FUNC3( play );
        FUNC1( "play" );
    }

bailout:
    FUNC6( &p_sys->lock );
}