
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_12__ {int i_rate; void* i_bitspersample; void* i_channels; } ;
struct TYPE_13__ {int i_extra; int * p_extra; TYPE_2__ audio; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_11__ {int force; } ;
struct TYPE_14__ {int out; int s; TYPE_5__* p_sys; int pf_control; int pf_demux; TYPE_1__ obj; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_15__ {int i_datalength; int i_framelength; int i_totalframes; int i_start; int p_es; void** pi_seektable; scalar_t__ i_currentframe; } ;
typedef TYPE_5__ demux_sys_t ;


 int AUDIO_ES ;
 int Close (int *) ;
 int Control ;
 int Demux ;
 void* GetDWLE (int *) ;
 void* GetWLE (int *) ;
 int INT_MAX ;
 int TTA_FRAMETIME ;
 int VLC_CODEC_TTA ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 void** calloc (int,int) ;
 int es_format_Clean (TYPE_3__*) ;
 int es_format_Init (TYPE_3__*,int ,int ) ;
 int es_out_Add (int ,TYPE_3__*) ;
 void* malloc (int) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int memcpy (int *,int *,int) ;
 int msg_Err (TYPE_4__*,char*) ;
 int msg_Warn (TYPE_4__*,char*) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 int vlc_stream_Read (int ,int *,int) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    es_format_t fmt;
    const uint8_t *p_peek;
    uint8_t p_header[22];
    uint8_t *p_fullheader;
    int i_seektable_size = 0;



    if( vlc_stream_Peek( p_demux->s, &p_peek, 4 ) < 4 )
        return VLC_EGENERIC;

    if( memcmp( p_peek, "TTA1", 4 ) )
    {
        if( !p_demux->obj.force )
            return VLC_EGENERIC;


        msg_Err( p_demux, "this doesn't look like a true-audio stream, "
                 "continuing anyway" );
    }

    if( vlc_stream_Read( p_demux->s, p_header, 22 ) < 22 )
        return VLC_EGENERIC;


    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys = malloc( sizeof( demux_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->pi_seektable = ((void*)0);


    es_format_Init( &fmt, AUDIO_ES, VLC_CODEC_TTA );
    fmt.audio.i_channels = GetWLE( &p_header[6] );
    fmt.audio.i_bitspersample = GetWLE( &p_header[8] );
    fmt.audio.i_rate = GetDWLE( &p_header[10] );
    if( fmt.audio.i_rate == 0 ||
        fmt.audio.i_rate > ( 1 << 20 ) )
    {
        msg_Warn( p_demux, "Wrong sample rate" );
        goto error;
    }

    p_sys->i_datalength = GetDWLE( &p_header[14] );
    p_sys->i_framelength = TTA_FRAMETIME * fmt.audio.i_rate;

    p_sys->i_totalframes = p_sys->i_datalength / p_sys->i_framelength +
                          ((p_sys->i_datalength % p_sys->i_framelength) != 0);
    p_sys->i_currentframe = 0;
    if( (INT_MAX - 22 - 4) / sizeof(uint32_t) < p_sys->i_totalframes )
        goto error;

    i_seektable_size = sizeof(uint32_t)*p_sys->i_totalframes;


    fmt.i_extra = 22 + i_seektable_size + 4;
    fmt.p_extra = p_fullheader = malloc( fmt.i_extra );
    if( !p_fullheader )
    {
        fmt.i_extra = 0;
        goto error;
    }

    memcpy( p_fullheader, p_header, 22 );
    p_fullheader += 22;
    if( vlc_stream_Read( p_demux->s, p_fullheader, i_seektable_size )
             != i_seektable_size )
        goto error;

    p_sys->pi_seektable = calloc( p_sys->i_totalframes, sizeof(uint32_t) );
    if( !p_sys->pi_seektable )
        goto error;
    for( uint32_t i = 0; i < p_sys->i_totalframes; i++ )
    {
        p_sys->pi_seektable[i] = GetDWLE( p_fullheader );
        p_fullheader += 4;
    }

    if( 4 != vlc_stream_Read( p_demux->s, p_fullheader, 4 ) )
        goto error;
    p_fullheader += 4;

    p_sys->p_es = es_out_Add( p_demux->out, &fmt );
    p_sys->i_start = p_fullheader - (uint8_t *)fmt.p_extra;
    es_format_Clean( &fmt );

    return VLC_SUCCESS;
error:
    es_format_Clean( &fmt );
    Close( p_this );
    return VLC_EGENERIC;
}
