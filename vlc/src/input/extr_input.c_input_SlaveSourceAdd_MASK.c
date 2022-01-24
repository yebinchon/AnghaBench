#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_9__ {int i_last_es_cat; int i_last_es_id; int /*<<< orphan*/  p_es_out_display; int /*<<< orphan*/  slave; int /*<<< orphan*/  i_slave; TYPE_1__* master; } ;
typedef  TYPE_2__ input_thread_private_t ;
struct TYPE_10__ {int b_slave_sub; int /*<<< orphan*/  p_demux; } ;
typedef  TYPE_3__ input_source_t ;
typedef  enum slave_type { ____Placeholder_slave_type } slave_type ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_8__ {int /*<<< orphan*/  p_demux; } ;

/* Variables and functions */
 int AUDIO_ES ; 
 int /*<<< orphan*/  DEMUX_GET_TIME ; 
 int /*<<< orphan*/  DEMUX_SET_TIME ; 
 int /*<<< orphan*/  ES_OUT_SET_ES_BY_ID ; 
 int /*<<< orphan*/  ES_OUT_SET_ES_DEFAULT_BY_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int SLAVE_ADD_CANFAIL ; 
 unsigned int SLAVE_ADD_FORCED ; 
 unsigned int SLAVE_ADD_SET_TIME ; 
#define  SLAVE_TYPE_AUDIO 129 
#define  SLAVE_TYPE_SPU 128 
 int SPU_ES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int UNKNOWN_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,char const*,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12( input_thread_t *p_input,
                                 enum slave_type i_type, const char *psz_uri,
                                 unsigned i_flags )
{
    input_thread_private_t *priv = FUNC7(p_input);
    const char *psz_forced_demux;
    const bool b_can_fail = i_flags & SLAVE_ADD_CANFAIL;
    const bool b_forced = i_flags & SLAVE_ADD_FORCED;
    const bool b_set_time = i_flags & SLAVE_ADD_SET_TIME;
    enum es_format_category_e i_cat;

    switch( i_type )
    {
    case SLAVE_TYPE_SPU:
        psz_forced_demux = "subtitle";
        i_cat = SPU_ES;
        break;
    case SLAVE_TYPE_AUDIO:
        psz_forced_demux = NULL;
        i_cat = AUDIO_ES;
        break;
    default:
        FUNC11();
    }

    FUNC8( p_input, "loading %s slave: %s (forced: %d)",
             i_cat == SPU_ES ? "spu" : "audio", psz_uri, b_forced );

    priv->i_last_es_cat = UNKNOWN_ES;

    input_source_t *p_source = FUNC1( p_input, psz_uri,
                                               psz_forced_demux,
                                               b_can_fail || psz_forced_demux );

    if( psz_forced_demux && p_source == NULL )
        p_source = FUNC1( p_input, psz_uri, NULL, b_can_fail );

    if( p_source == NULL )
    {
        FUNC10( p_input, "failed to add %s as slave", psz_uri );
        return VLC_EGENERIC;
    }

    if( i_type == SLAVE_TYPE_AUDIO )
    {
        if( b_set_time )
        {
            vlc_tick_t i_time;

            /* Set position */
            if( FUNC5( priv->master->p_demux, DEMUX_GET_TIME, i_time ) )
            {
                FUNC9( p_input, "demux doesn't like DEMUX_GET_TIME" );
                FUNC0( p_source );
                return VLC_EGENERIC;
            }

            if( FUNC5( p_source->p_demux,
                               DEMUX_SET_TIME, i_time, true ) )
            {
                FUNC9( p_input, "seek failed for new slave" );
                FUNC0( p_source );
                return VLC_EGENERIC;
            }
        }

        /* Get meta (access and demux) */
        FUNC2( p_input, p_source->p_demux );
    }
    else
        p_source->b_slave_sub = true;

    FUNC3( priv->i_slave, priv->slave, p_source );

    if( !b_forced || priv->i_last_es_cat != i_cat )
        return VLC_SUCCESS;

    FUNC4( priv->i_last_es_id != -1 );

    FUNC6( priv->p_es_out_display, ES_OUT_SET_ES_DEFAULT_BY_ID,
                    priv->i_last_es_id );
    FUNC6( priv->p_es_out_display, ES_OUT_SET_ES_BY_ID,
                    priv->i_last_es_id, false );

    return VLC_SUCCESS;
}