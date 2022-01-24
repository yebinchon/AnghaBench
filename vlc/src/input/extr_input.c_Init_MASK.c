#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {double f_float; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_12__ {int b_out_pace_control; int i_slave; TYPE_4__* p_sout; int /*<<< orphan*/ * p_es_out; int /*<<< orphan*/ * p_resource; int /*<<< orphan*/  p_es_out_display; TYPE_6__* p_item; TYPE_3__** slave; int /*<<< orphan*/  b_preparsing; int /*<<< orphan*/  normal_time; TYPE_3__* master; int /*<<< orphan*/  rate; } ;
typedef  TYPE_2__ input_thread_private_t ;
struct TYPE_13__ {int /*<<< orphan*/  p_demux; } ;
typedef  TYPE_3__ input_source_t ;
struct TYPE_15__ {char* psz_uri; } ;
struct TYPE_14__ {scalar_t__ i_out_pace_nocontrol; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_LENGTH ; 
 int /*<<< orphan*/  ERROR_S ; 
 int /*<<< orphan*/  ES_OUT_MODE_END ; 
 int /*<<< orphan*/  INPUT_CONTROL_SET_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPENING_S ; 
 int /*<<< orphan*/  PLAYING_S ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,double,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,...) ; 
 double FUNC25 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 () ; 

__attribute__((used)) static int FUNC34( input_thread_t * p_input )
{
    input_thread_private_t *priv = FUNC20(p_input);
    input_source_t *master;

    /* */
    FUNC13( p_input, OPENING_S, VLC_TICK_INVALID );
    FUNC16( p_input, 0.0 );

    if( FUNC29( FUNC32(p_input), "meta-file" ) )
    {
        FUNC24( p_input, "Input is a meta file: disabling unneeded options" );
        FUNC28( p_input, "sout", "" );
        FUNC26( p_input, "sout-all", false );
        FUNC28( p_input, "input-slave", "" );
        FUNC27( p_input, "input-repeat", 0 );
        FUNC28( p_input, "sub-file", "" );
        FUNC26( p_input, "sub-autodetect-file", false );
    }

#ifdef ENABLE_SOUT
    if( InitSout( p_input ) )
        goto error;
#endif

    /* Create es out */
    priv->p_es_out = FUNC15( p_input, priv->p_es_out_display, priv->rate );
    if( priv->p_es_out == NULL )
        goto error;

    /* */
    master = FUNC5( p_input, priv->p_item->psz_uri, NULL, false );
    if( master == NULL )
        goto error;
    priv->master = master;

    FUNC2( p_input, false );

    /* Load master infos */
    /* Init length */
    vlc_tick_t i_length;
    if( FUNC9( master->p_demux, DEMUX_GET_LENGTH, &i_length ) )
        i_length = VLC_TICK_INVALID;
    if( i_length == VLC_TICK_INVALID )
        i_length = FUNC18( priv->p_item );

    FUNC17( p_input, 0.0, VLC_TICK_INVALID, priv->normal_time,
                          i_length );

    if( !priv->b_preparsing )
    {
        FUNC8( p_input );
        FUNC7( p_input );
        FUNC6( p_input );
        FUNC0( p_input );

        double f_rate = FUNC25( p_input, "rate" );
        if( f_rate != 0.0 && f_rate != 1.0 )
        {
            vlc_value_t val = { .f_float = f_rate };
            FUNC14( p_input, INPUT_CONTROL_SET_RATE, &val );
        }
    }

    if( !priv->b_preparsing && priv->p_sout )
    {
        priv->b_out_pace_control = priv->p_sout->i_out_pace_nocontrol > 0;

        FUNC24( p_input, "starting in %ssync mode",
                 priv->b_out_pace_control ? "a" : "" );
    }

    if (!FUNC19(FUNC20(p_input)->p_item))
    {
        vlc_meta_t *p_meta = FUNC31();
        if( p_meta != NULL )
        {
            /* Get meta data from users */
            FUNC3( p_input, p_meta );

            /* Get meta data from master input */
            FUNC4( p_input, master, p_meta );

            /* And from slave */
            for( int i = 0; i < priv->i_slave; i++ )
                FUNC4( p_input, priv->slave[i], p_meta );

            FUNC10( priv->p_es_out, p_meta );
            FUNC30( p_meta );
        }
    }

    FUNC24( p_input, "`%s' successfully opened",
             FUNC20(p_input)->p_item->psz_uri );

    /* initialization is complete */
    FUNC13( p_input, PLAYING_S, FUNC33() );

    return VLC_SUCCESS;

error:
    FUNC13( p_input, ERROR_S, VLC_TICK_INVALID );

    if( FUNC20(p_input)->p_es_out )
        FUNC11( FUNC20(p_input)->p_es_out );
    FUNC12( FUNC20(p_input)->p_es_out_display, ES_OUT_MODE_END );
    if( FUNC20(p_input)->p_resource )
    {
        if( FUNC20(p_input)->p_sout )
            FUNC22( FUNC20(p_input)->p_resource,
                                         FUNC20(p_input)->p_sout, NULL );
        FUNC23( FUNC20(p_input)->p_resource, NULL );
        if( FUNC20(p_input)->p_resource )
        {
            FUNC21( FUNC20(p_input)->p_resource );
            FUNC20(p_input)->p_resource = NULL;
        }
    }

    /* Mark them deleted */
    FUNC20(p_input)->p_es_out = NULL;
    FUNC20(p_input)->p_sout = NULL;

    return VLC_EGENERIC;
}