#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  jack_port_t ;
typedef  int /*<<< orphan*/  jack_default_audio_sample_t ;
struct TYPE_14__ {int i_channels; int i_rate; int i_bitspersample; int i_blockalign; } ;
struct TYPE_15__ {int i_bitrate; TYPE_1__ audio; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_16__ {int /*<<< orphan*/ * out; TYPE_4__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_17__ {int i_channels; int i_match_ports; char const** pp_jack_port_input; char const** pp_jack_buffer; char const** pp_jack_port_table; int jack_sample_rate; int jack_sample_size; int /*<<< orphan*/  pts; int /*<<< orphan*/  p_es_audio; int /*<<< orphan*/ * p_jack_client; int /*<<< orphan*/  jack_buffer_size; scalar_t__ psz_ports; int /*<<< orphan*/ * p_jack_ringbuffer; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  JACK_DEFAULT_AUDIO_TYPE ; 
 int /*<<< orphan*/  JackNullOption ; 
 int /*<<< orphan*/  JackPortIsInput ; 
 int /*<<< orphan*/  JackPortIsOutput ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  Process ; 
 int /*<<< orphan*/  VLC_CODEC_FL32 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int VLC_VAR_BOOL ; 
 int VLC_VAR_DOINHERIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char** FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 char const* FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,char*,int) ; 
 scalar_t__ FUNC26 (TYPE_3__*,char*) ; 
 TYPE_4__* FUNC27 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC28( vlc_object_t *p_this )
{
    demux_t *p_demux = ( demux_t* )p_this;
    demux_sys_t *p_sys;
    es_format_t fmt;
    int i_out_ports = 0;

    if (p_demux->out == NULL)
        return VLC_EGENERIC;

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    /* Allocate structure */
    p_demux->p_sys = p_sys = FUNC27( p_this, 1, sizeof( demux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    /* Parse MRL */
    FUNC0( p_demux );

    /* Create var */
    FUNC25( p_demux, "jack-input-use-vlc-pace",
        VLC_VAR_BOOL | VLC_VAR_DOINHERIT );
    FUNC25( p_demux, "jack-input-auto-connect",
        VLC_VAR_BOOL | VLC_VAR_DOINHERIT );

    /* JACK connexions */
    /* define name and connect to jack server */
    char p_vlc_client_name[32];
    FUNC24( p_vlc_client_name, "vlc-input-%d", FUNC7() );
    p_sys->p_jack_client = FUNC10( p_vlc_client_name, JackNullOption, NULL );
    if( p_sys->p_jack_client == NULL )
    {
        FUNC22( p_demux, "failed to connect to JACK server" );
        return VLC_EGENERIC;
    }

    /* find some specifics ports if user entered a regexp */
    if( p_sys->psz_ports )
    {
        FUNC1( p_demux );
        if( p_sys->i_channels == 0 )
        {
            p_sys->i_channels = p_sys->i_match_ports;
        }
    }

    /* allocate input ports */
    if( p_sys->i_channels == 0 ) p_sys->i_channels = 2 ; /* default number of port */
    p_sys->pp_jack_port_input = FUNC21(
        p_sys->i_channels * sizeof( jack_port_t* ) );
    if( p_sys->pp_jack_port_input == NULL )
    {
        FUNC9( p_sys->p_jack_client );
        return VLC_ENOMEM;
    }

    /* allocate ringbuffer */
    /* The length of the ringbuffer is critical, it must be large enought
       to keep all data between 2 GrabJack() calls.  We assume 1 sec is ok */
    p_sys->p_jack_ringbuffer = FUNC18( p_sys->i_channels
         * FUNC14( p_sys->p_jack_client )
         * sizeof( jack_default_audio_sample_t ) );
    if( p_sys->p_jack_ringbuffer == NULL )
    {
        FUNC6( p_sys->pp_jack_port_input );
        FUNC9( p_sys->p_jack_client );
        return VLC_ENOMEM;
    }

    /* register input ports */
    for( unsigned i = 0; i <  p_sys->i_channels; i++ )
    {
        char p_input_name[32];
        FUNC23( p_input_name, 32, "vlc_in_%d", i+1 );
        p_sys->pp_jack_port_input[i] = FUNC16(
            p_sys->p_jack_client, p_input_name, JACK_DEFAULT_AUDIO_TYPE,
            JackPortIsInput, 0 );
        if( p_sys->pp_jack_port_input[i] == NULL )
        {
            FUNC22( p_demux, "failed to register a JACK port" );
            FUNC19( p_sys->p_jack_ringbuffer );
            FUNC6( p_sys->pp_jack_port_input );
            FUNC9( p_sys->p_jack_client );
            return VLC_EGENERIC;
        }
    }

    /* allocate buffer for input ports */
    p_sys->pp_jack_buffer = FUNC21 ( p_sys->i_channels
        * sizeof( jack_default_audio_sample_t * ) );
    if( p_sys->pp_jack_buffer == NULL )
    {
        for( unsigned i = 0; i < p_sys->i_channels; i++ )
            FUNC17( p_sys->p_jack_client, p_sys->pp_jack_port_input[i] );
        FUNC19( p_sys->p_jack_ringbuffer );
        FUNC6( p_sys->pp_jack_port_input );
        FUNC9( p_sys->p_jack_client );
        return VLC_ENOMEM;
    }

    /* set process callback */
    FUNC20( p_sys->p_jack_client, Process, p_demux );

    /* tell jack server we are ready */
    if ( FUNC8( p_sys->p_jack_client ) )
    {
        FUNC22( p_demux, "failed to activate JACK client" );
        FUNC6( p_sys->pp_jack_buffer );
        for( unsigned i = 0; i < p_sys->i_channels; i++ )
            FUNC17( p_sys->p_jack_client, p_sys->pp_jack_port_input[i] );
        FUNC19( p_sys->p_jack_ringbuffer );
        FUNC6( p_sys->pp_jack_port_input );
        FUNC9( p_sys->p_jack_client );
        return VLC_EGENERIC;
    }

    /* connect vlc input to specifics jack output ports if requested */
   /*  if( var_GetBool( p_demux, "jack-input-auto-connect" ) && p_sys->psz_ports ) */
    if( p_sys->psz_ports )
    {
        for( int j = 0; j < p_sys->i_match_ports; j++ )
        {
            int i_input_ports = j % p_sys->i_channels;
            FUNC11( p_sys->p_jack_client, p_sys->pp_jack_port_table[j],
                FUNC15( p_sys->pp_jack_port_input[i_input_ports] ) );
        }
    }

    /* connect vlc input to all jack output ports if requested */
    if( FUNC26( p_demux, "jack-input-auto-connect" ) && !p_sys->psz_ports )
    {
        const char **pp_jack_port_output = FUNC13( p_sys->p_jack_client,
                                                           NULL, NULL, JackPortIsOutput );

        while( pp_jack_port_output && pp_jack_port_output[i_out_ports] )
        {
            i_out_ports++;
        }

        for( int j = 0; j < i_out_ports; j++ )
        {
            int i_input_ports = j % p_sys->i_channels;
            FUNC11( p_sys->p_jack_client, pp_jack_port_output[j],
                FUNC15( p_sys->pp_jack_port_input[i_input_ports] ) );
        }

        FUNC6( pp_jack_port_output );
    }

    /* info about jack server */
    /* get buffers size */
    p_sys->jack_buffer_size = FUNC12( p_sys->p_jack_client );
    /* get sample rate */
    p_sys->jack_sample_rate = FUNC14( p_sys->p_jack_client );
    /* get sample size */
    p_sys->jack_sample_size = sizeof( jack_default_audio_sample_t );

    /* Define output format */
    FUNC4( &fmt, AUDIO_ES, VLC_CODEC_FL32 );
    fmt.audio.i_channels =  p_sys->i_channels;
    fmt.audio.i_rate =  p_sys->jack_sample_rate;
    fmt.audio.i_bitspersample =  p_sys->jack_sample_size * 8;
    fmt.audio.i_blockalign = fmt.audio.i_bitspersample / 8;
    fmt.i_bitrate = fmt.audio.i_rate * fmt.audio.i_bitspersample
        * fmt.audio.i_channels;

    p_sys->p_es_audio = FUNC5( p_demux->out, &fmt );
    FUNC2( &p_sys->pts, fmt.audio.i_rate, 1 );
    FUNC3( &p_sys->pts, VLC_TICK_0 );

    return VLC_SUCCESS;
}