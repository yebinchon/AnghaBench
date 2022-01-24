#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_7__ {int i_slave; int /*<<< orphan*/  p_es_out; TYPE_1__** slave; TYPE_2__* master; } ;
typedef  TYPE_3__ input_thread_private_t ;
struct TYPE_6__ {int i_pts_delay; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_pts_delay; } ;

/* Variables and functions */
 int DEFAULT_PTS_DELAY ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int const) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4( input_thread_t *p_input )
{
    input_thread_private_t *p_sys = FUNC2(p_input);

    /* Get max pts delay from input source */
    vlc_tick_t i_pts_delay = p_sys->master->i_pts_delay;
    for( int i = 0; i < p_sys->i_slave; i++ )
        i_pts_delay = FUNC0( i_pts_delay, p_sys->slave[i]->i_pts_delay );

    if( i_pts_delay < 0 )
        i_pts_delay = 0;

    /* Update cr_average depending on the caching */
    const int i_cr_average = FUNC3( p_input, "cr-average" ) * i_pts_delay / DEFAULT_PTS_DELAY;

    FUNC1( FUNC2(p_input)->p_es_out, i_pts_delay, 0, i_cr_average );
}