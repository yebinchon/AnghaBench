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
typedef  double vlc_tick_t ;
struct input_stats_t {int dummy; } ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_7__ {double normal_time; TYPE_2__* p_item; int /*<<< orphan*/ * stats; int /*<<< orphan*/  p_es_out; TYPE_1__* master; } ;
typedef  TYPE_3__ input_thread_private_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; struct input_stats_t* p_stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_LENGTH ; 
 int /*<<< orphan*/  DEMUX_GET_NORMAL_TIME ; 
 int /*<<< orphan*/  DEMUX_GET_POSITION ; 
 int /*<<< orphan*/  DEMUX_GET_TIME ; 
 double VLC_TICK_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct input_stats_t*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct input_stats_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7( input_thread_t *p_input )
{
    input_thread_private_t *priv = FUNC3(p_input);
    double f_position = 0.0;
    vlc_tick_t i_time;
    vlc_tick_t i_length;

    /* update input status variables */
    if( FUNC0( priv->master->p_demux,
                       DEMUX_GET_POSITION, &f_position ) )
        f_position = 0.0;

    if( FUNC0( priv->master->p_demux, DEMUX_GET_TIME, &i_time ) )
        i_time = VLC_TICK_INVALID;

    if( FUNC0( priv->master->p_demux, DEMUX_GET_LENGTH, &i_length ) )
        i_length = VLC_TICK_INVALID;

    /* In case of failure (not implemented or in case of seek), use the last
     * normal_time value (that is VLC_TICK_0 by default). */
    FUNC0( priv->master->p_demux, DEMUX_GET_NORMAL_TIME, &priv->normal_time );

    FUNC1( priv->p_es_out, f_position, i_time, priv->normal_time,
                     i_length );

    struct input_stats_t new_stats;
    if( priv->stats != NULL )
        FUNC4( priv->stats, &new_stats );

    FUNC5( &priv->p_item->lock );
    if( priv->stats != NULL )
        *priv->p_item->p_stats = new_stats;
    FUNC6( &priv->p_item->lock );

    FUNC2( p_input, &new_stats );
}