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
typedef  int /*<<< orphan*/ **** vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_6__ {int i_slave; float slave_subs_rate; int /*<<< orphan*/  p_es_out; TYPE_3__** slave; TYPE_1__* master; } ;
typedef  TYPE_2__ input_thread_private_t ;
struct TYPE_7__ {int b_eof; float sub_rate; int /*<<< orphan*/  p_demux; scalar_t__ b_can_rate_control; scalar_t__ b_slave_sub; } ;
typedef  TYPE_3__ input_source_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_TIME ; 
 int /*<<< orphan*/  DEMUX_SET_NEXT_DEMUX_TIME ; 
 int /*<<< orphan*/  DEMUX_SET_RATE ; 
 int /*<<< orphan*/  ES_OUT_RESET_PCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC6( input_thread_t *p_input )
{
    input_thread_private_t *priv = FUNC3(p_input);
    vlc_tick_t i_time;
    int i;

    if( FUNC0( FUNC3(p_input)->master->p_demux, DEMUX_GET_TIME, &i_time ) )
    {
        FUNC5( p_input, "demux doesn't like DEMUX_GET_TIME" );
        return;
    }

    for( i = 0; i < FUNC3(p_input)->i_slave; i++ )
    {
        input_source_t *in = FUNC3(p_input)->slave[i];
        int i_ret;

        if( in->b_eof )
            continue;

        if( priv->slave_subs_rate != in->sub_rate )
        {
            if( in->b_slave_sub && in->b_can_rate_control )
            {
                if( in->sub_rate != 0 ) /* Don't reset when it's the first time */
                    FUNC2( priv->p_es_out, ES_OUT_RESET_PCR );
                float new_rate = priv->slave_subs_rate;
                FUNC0( in->p_demux, DEMUX_SET_RATE, &new_rate );
            }
            in->sub_rate = priv->slave_subs_rate;
        }


        /* Call demux_Demux until we have read enough data */
        if( FUNC0( in->p_demux, DEMUX_SET_NEXT_DEMUX_TIME, i_time ) )
        {
            for( ;; )
            {
                vlc_tick_t i_stime;
                if( FUNC0( in->p_demux, DEMUX_GET_TIME, &i_stime ) )
                {
                    FUNC5( p_input, "slave[%d] doesn't like "
                             "DEMUX_GET_TIME -> EOF", i );
                    i_ret = 0;
                    break;
                }

                if( i_stime >= i_time )
                {
                    i_ret = 1;
                    break;
                }

                if( ( i_ret = FUNC1( in->p_demux ) ) <= 0 )
                    break;
            }
        }
        else
        {
            i_ret = FUNC1( in->p_demux );
        }

        if( i_ret <= 0 )
        {
            FUNC4( p_input, "slave %d EOF", i );
            in->b_eof = true;
        }
    }
}