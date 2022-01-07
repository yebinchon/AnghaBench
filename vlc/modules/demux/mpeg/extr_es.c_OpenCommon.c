
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef int uint64_t ;
struct TYPE_21__ {int* pb_gain; double* pf_gain; int* pb_peak; double* pf_peak; } ;
struct TYPE_22__ {TYPE_2__ audio_replay_gain; int i_original_fourcc; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_23__ {int s; TYPE_5__* p_sys; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_25__ {int psz_name; int i_codec; scalar_t__ (* pf_init ) (TYPE_4__*) ;} ;
struct TYPE_20__ {int p_entry; int i_count; scalar_t__ i_current; } ;
struct TYPE_24__ {int b_start; int b_estimate_bitrate; int b_big_endian; double* rgf_replay_gain; double* rgf_replay_peak; int * p_packetized_data; TYPE_13__* p_packetizer; TYPE_6__ codec; int i_original; int i_stream_offset; TYPE_1__ chapters; int f_fps; scalar_t__ i_bitrate_avg; int * p_es; } ;
typedef TYPE_5__ demux_sys_t ;
typedef TYPE_6__ codec_t ;
struct TYPE_19__ {TYPE_3__ fmt_out; } ;


 int AUDIO_REPLAY_GAIN_MAX ;
 int DEMUX_INIT_COMMON () ;
 scalar_t__ Parse (TYPE_4__*,int **) ;
 int TAB_INIT (int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_13__* demux_PacketizerNew (TYPE_4__*,TYPE_3__*,int ) ;
 int es_format_Init (TYPE_3__*,int,int ) ;
 int free (TYPE_5__*) ;
 int memset (TYPE_5__*,int ,int) ;
 int msg_Dbg (TYPE_4__*,char*,char const*) ;
 scalar_t__ stub1 (TYPE_4__*) ;
 int var_InheritFloat (TYPE_4__*,char*) ;
 scalar_t__ vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static int OpenCommon( demux_t *p_demux,
                       int i_cat, const codec_t *p_codec, uint64_t i_bs_offset )
{
    demux_sys_t *p_sys;

    es_format_t fmt;

    DEMUX_INIT_COMMON(); p_sys = p_demux->p_sys;
    memset( p_sys, 0, sizeof( demux_sys_t ) );
    p_sys->codec = *p_codec;
    p_sys->p_es = ((void*)0);
    p_sys->b_start = 1;
    p_sys->i_stream_offset = i_bs_offset;
    p_sys->b_estimate_bitrate = 1;
    p_sys->i_bitrate_avg = 0;
    p_sys->b_big_endian = 0;
    p_sys->f_fps = var_InheritFloat( p_demux, "es-fps" );
    p_sys->p_packetized_data = ((void*)0);
    p_sys->chapters.i_current = 0;
    TAB_INIT(p_sys->chapters.i_count, p_sys->chapters.p_entry);

    if( vlc_stream_Seek( p_demux->s, p_sys->i_stream_offset ) )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }

    if( p_sys->codec.pf_init( p_demux ) )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_demux, "detected format %4.4s", (const char*)&p_sys->codec.i_codec );


    es_format_Init( &fmt, i_cat, p_sys->codec.i_codec );
    fmt.i_original_fourcc = p_sys->i_original;
    p_sys->p_packetizer = demux_PacketizerNew( p_demux, &fmt, p_sys->codec.psz_name );
    if( !p_sys->p_packetizer )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }

    es_format_t *p_fmt = &p_sys->p_packetizer->fmt_out;
    for( int i = 0; i < AUDIO_REPLAY_GAIN_MAX; i++ )
    {
        if ( p_sys->rgf_replay_gain[i] != 0.0 )
        {
            p_fmt->audio_replay_gain.pb_gain[i] = 1;
            p_fmt->audio_replay_gain.pf_gain[i] = p_sys->rgf_replay_gain[i];
        }
        if ( p_sys->rgf_replay_peak[i] != 0.0 )
        {
            p_fmt->audio_replay_gain.pb_peak[i] = 1;
            p_fmt->audio_replay_gain.pf_peak[i] = p_sys->rgf_replay_peak[i];
        }
    }

    for( ;; )
    {
        if( Parse( p_demux, &p_sys->p_packetized_data ) )
            break;
        if( p_sys->p_packetized_data )
            break;
    }

    return VLC_SUCCESS;
}
