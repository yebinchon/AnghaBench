
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int jack_port_t ;
typedef int jack_default_audio_sample_t ;
struct TYPE_14__ {int i_channels; int i_rate; int i_bitspersample; int i_blockalign; } ;
struct TYPE_15__ {int i_bitrate; TYPE_1__ audio; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_16__ {int * out; TYPE_4__* p_sys; int pf_control; int pf_demux; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_17__ {int i_channels; int i_match_ports; char const** pp_jack_port_input; char const** pp_jack_buffer; char const** pp_jack_port_table; int jack_sample_rate; int jack_sample_size; int pts; int p_es_audio; int * p_jack_client; int jack_buffer_size; scalar_t__ psz_ports; int * p_jack_ringbuffer; } ;
typedef TYPE_4__ demux_sys_t ;


 int AUDIO_ES ;
 int Control ;
 int Demux ;
 int JACK_DEFAULT_AUDIO_TYPE ;
 int JackNullOption ;
 int JackPortIsInput ;
 int JackPortIsOutput ;
 int Parse (TYPE_3__*) ;
 int Port_finder (TYPE_3__*) ;
 int Process ;
 int VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_0 ;
 int VLC_VAR_BOOL ;
 int VLC_VAR_DOINHERIT ;
 int date_Init (int *,int,int) ;
 int date_Set (int *,int ) ;
 int es_format_Init (TYPE_2__*,int ,int ) ;
 int es_out_Add (int *,TYPE_2__*) ;
 int free (char const**) ;
 int getpid () ;
 scalar_t__ jack_activate (int *) ;
 int jack_client_close (int *) ;
 int * jack_client_open (char*,int ,int *) ;
 int jack_connect (int *,char const*,int ) ;
 int jack_get_buffer_size (int *) ;
 char** jack_get_ports (int *,int *,int *,int ) ;
 int jack_get_sample_rate (int *) ;
 int jack_port_name (char const*) ;
 char const* jack_port_register (int *,char*,int ,int ,int ) ;
 int jack_port_unregister (int *,char const*) ;
 int * jack_ringbuffer_create (int) ;
 int jack_ringbuffer_free (int *) ;
 int jack_set_process_callback (int *,int ,TYPE_3__*) ;
 void* malloc (int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int sprintf (char*,char*,int) ;
 int var_Create (TYPE_3__*,char*,int) ;
 scalar_t__ var_GetBool (TYPE_3__*,char*) ;
 TYPE_4__* vlc_obj_calloc (int *,int,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    demux_t *p_demux = ( demux_t* )p_this;
    demux_sys_t *p_sys;
    es_format_t fmt;
    int i_out_ports = 0;

    if (p_demux->out == ((void*)0))
        return VLC_EGENERIC;

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;


    p_demux->p_sys = p_sys = vlc_obj_calloc( p_this, 1, sizeof( demux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;


    Parse( p_demux );


    var_Create( p_demux, "jack-input-use-vlc-pace",
        VLC_VAR_BOOL | VLC_VAR_DOINHERIT );
    var_Create( p_demux, "jack-input-auto-connect",
        VLC_VAR_BOOL | VLC_VAR_DOINHERIT );



    char p_vlc_client_name[32];
    sprintf( p_vlc_client_name, "vlc-input-%d", getpid() );
    p_sys->p_jack_client = jack_client_open( p_vlc_client_name, JackNullOption, ((void*)0) );
    if( p_sys->p_jack_client == ((void*)0) )
    {
        msg_Err( p_demux, "failed to connect to JACK server" );
        return VLC_EGENERIC;
    }


    if( p_sys->psz_ports )
    {
        Port_finder( p_demux );
        if( p_sys->i_channels == 0 )
        {
            p_sys->i_channels = p_sys->i_match_ports;
        }
    }


    if( p_sys->i_channels == 0 ) p_sys->i_channels = 2 ;
    p_sys->pp_jack_port_input = malloc(
        p_sys->i_channels * sizeof( jack_port_t* ) );
    if( p_sys->pp_jack_port_input == ((void*)0) )
    {
        jack_client_close( p_sys->p_jack_client );
        return VLC_ENOMEM;
    }




    p_sys->p_jack_ringbuffer = jack_ringbuffer_create( p_sys->i_channels
         * jack_get_sample_rate( p_sys->p_jack_client )
         * sizeof( jack_default_audio_sample_t ) );
    if( p_sys->p_jack_ringbuffer == ((void*)0) )
    {
        free( p_sys->pp_jack_port_input );
        jack_client_close( p_sys->p_jack_client );
        return VLC_ENOMEM;
    }


    for( unsigned i = 0; i < p_sys->i_channels; i++ )
    {
        char p_input_name[32];
        snprintf( p_input_name, 32, "vlc_in_%d", i+1 );
        p_sys->pp_jack_port_input[i] = jack_port_register(
            p_sys->p_jack_client, p_input_name, JACK_DEFAULT_AUDIO_TYPE,
            JackPortIsInput, 0 );
        if( p_sys->pp_jack_port_input[i] == ((void*)0) )
        {
            msg_Err( p_demux, "failed to register a JACK port" );
            jack_ringbuffer_free( p_sys->p_jack_ringbuffer );
            free( p_sys->pp_jack_port_input );
            jack_client_close( p_sys->p_jack_client );
            return VLC_EGENERIC;
        }
    }


    p_sys->pp_jack_buffer = malloc ( p_sys->i_channels
        * sizeof( jack_default_audio_sample_t * ) );
    if( p_sys->pp_jack_buffer == ((void*)0) )
    {
        for( unsigned i = 0; i < p_sys->i_channels; i++ )
            jack_port_unregister( p_sys->p_jack_client, p_sys->pp_jack_port_input[i] );
        jack_ringbuffer_free( p_sys->p_jack_ringbuffer );
        free( p_sys->pp_jack_port_input );
        jack_client_close( p_sys->p_jack_client );
        return VLC_ENOMEM;
    }


    jack_set_process_callback( p_sys->p_jack_client, Process, p_demux );


    if ( jack_activate( p_sys->p_jack_client ) )
    {
        msg_Err( p_demux, "failed to activate JACK client" );
        free( p_sys->pp_jack_buffer );
        for( unsigned i = 0; i < p_sys->i_channels; i++ )
            jack_port_unregister( p_sys->p_jack_client, p_sys->pp_jack_port_input[i] );
        jack_ringbuffer_free( p_sys->p_jack_ringbuffer );
        free( p_sys->pp_jack_port_input );
        jack_client_close( p_sys->p_jack_client );
        return VLC_EGENERIC;
    }



    if( p_sys->psz_ports )
    {
        for( int j = 0; j < p_sys->i_match_ports; j++ )
        {
            int i_input_ports = j % p_sys->i_channels;
            jack_connect( p_sys->p_jack_client, p_sys->pp_jack_port_table[j],
                jack_port_name( p_sys->pp_jack_port_input[i_input_ports] ) );
        }
    }


    if( var_GetBool( p_demux, "jack-input-auto-connect" ) && !p_sys->psz_ports )
    {
        const char **pp_jack_port_output = jack_get_ports( p_sys->p_jack_client,
                                                           ((void*)0), ((void*)0), JackPortIsOutput );

        while( pp_jack_port_output && pp_jack_port_output[i_out_ports] )
        {
            i_out_ports++;
        }

        for( int j = 0; j < i_out_ports; j++ )
        {
            int i_input_ports = j % p_sys->i_channels;
            jack_connect( p_sys->p_jack_client, pp_jack_port_output[j],
                jack_port_name( p_sys->pp_jack_port_input[i_input_ports] ) );
        }

        free( pp_jack_port_output );
    }



    p_sys->jack_buffer_size = jack_get_buffer_size( p_sys->p_jack_client );

    p_sys->jack_sample_rate = jack_get_sample_rate( p_sys->p_jack_client );

    p_sys->jack_sample_size = sizeof( jack_default_audio_sample_t );


    es_format_Init( &fmt, AUDIO_ES, VLC_CODEC_FL32 );
    fmt.audio.i_channels = p_sys->i_channels;
    fmt.audio.i_rate = p_sys->jack_sample_rate;
    fmt.audio.i_bitspersample = p_sys->jack_sample_size * 8;
    fmt.audio.i_blockalign = fmt.audio.i_bitspersample / 8;
    fmt.i_bitrate = fmt.audio.i_rate * fmt.audio.i_bitspersample
        * fmt.audio.i_channels;

    p_sys->p_es_audio = es_out_Add( p_demux->out, &fmt );
    date_Init( &p_sys->pts, fmt.audio.i_rate, 1 );
    date_Set( &p_sys->pts, VLC_TICK_0 );

    return VLC_SUCCESS;
}
