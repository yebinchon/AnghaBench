#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_5__ {scalar_t__ i_stop; scalar_t__ i_slave; int /*<<< orphan*/  p_es_out; TYPE_1__* master; } ;
typedef  TYPE_2__ input_thread_private_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_4__ {int b_eof; scalar_t__ b_title_demux; int /*<<< orphan*/ * p_demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_TIME ; 
 int /*<<< orphan*/  ERROR_S ; 
 int /*<<< orphan*/  INPUT_UPDATE_TITLE_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int VLC_DEMUXER_EGENERIC ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC11( input_thread_t *p_input, bool *pb_changed )
{
    input_thread_private_t* p_priv = FUNC9(p_input);
    demux_t *p_demux = p_priv->master->p_demux;
    int i_ret = VLC_DEMUXER_SUCCESS;

    *pb_changed = false;

    if( p_priv->i_stop > 0 )
    {
        vlc_tick_t i_time;
        if( FUNC4( p_demux, DEMUX_GET_TIME, &i_time ) )
            i_time = VLC_TICK_INVALID;

        if( p_priv->i_stop <= i_time )
            i_ret = VLC_DEMUXER_EOF;
    }

    if( i_ret == VLC_DEMUXER_SUCCESS )
        i_ret = FUNC5( p_demux );

    i_ret = i_ret > 0 ? VLC_DEMUXER_SUCCESS : ( i_ret < 0 ? VLC_DEMUXER_EGENERIC : VLC_DEMUXER_EOF);

    if( i_ret == VLC_DEMUXER_SUCCESS )
    {
        if( FUNC6( p_demux, INPUT_UPDATE_TITLE_LIST ) )
            FUNC2( p_input );

        if( p_priv->master->b_title_demux )
        {
            i_ret = FUNC3( p_input );
            *pb_changed = true;
        }

        FUNC1( p_input );
    }

    if( i_ret == VLC_DEMUXER_EOF )
    {
        FUNC10( p_input, "EOF reached" );
        p_priv->master->b_eof = true;
        FUNC7(p_priv->p_es_out);
    }
    else if( i_ret == VLC_DEMUXER_EGENERIC )
    {
        FUNC8( p_input, ERROR_S, VLC_TICK_INVALID );
    }
    else if( p_priv->i_slave > 0 )
        FUNC0( p_input );
}