
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_19__ {int* pb_peak; float* pf_peak; int* pb_gain; float* pf_gain; } ;
struct TYPE_18__ {int i_channels; int i_blockalign; int i_bitspersample; int i_rate; } ;
struct TYPE_20__ {int i_bitrate; TYPE_3__ audio_replay_gain; TYPE_2__ audio; } ;
typedef TYPE_4__ es_format_t ;
struct TYPE_17__ {int force; } ;
struct TYPE_21__ {int out; TYPE_6__* p_sys; int pf_control; int pf_demux; TYPE_1__ obj; int s; } ;
typedef TYPE_5__ demux_t ;
struct TYPE_23__ {int channels; scalar_t__ peak_title; scalar_t__ peak_album; int gain_album; int gain_title; int sample_freq; } ;
struct TYPE_24__ {TYPE_5__* data; int canseek; int get_size; int tell; int seek; int read; } ;
struct TYPE_22__ {int p_es; TYPE_7__ info; int decoder; TYPE_8__ reader; scalar_t__ i_position; } ;
typedef TYPE_6__ demux_sys_t ;


 int AUDIO_ES ;
 size_t AUDIO_REPLAY_GAIN_ALBUM ;
 size_t AUDIO_REPLAY_GAIN_TRACK ;
 scalar_t__ CONVERT_GAIN (int ) ;
 scalar_t__ CONVERT_PEAK (scalar_t__) ;
 int Control ;
 int Demux ;
 scalar_t__ ERROR_CODE_OK ;
 int GetDWLE (int const*) ;
 int ReaderCanSeek ;
 int ReaderGetSize ;
 int ReaderRead ;
 int ReaderSeek ;
 int ReaderTell ;
 int VLC_CODEC_FL32 ;
 int VLC_CODEC_S32B ;
 int VLC_CODEC_S32L ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_6__* calloc (int,int) ;
 int demux_IsPathExtension (TYPE_5__*,char*) ;
 int es_format_Init (TYPE_4__*,int ,int ) ;
 int es_out_Add (int ,TYPE_4__*) ;
 int free (TYPE_6__*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int mpc_decoder_initialize (int *,TYPE_7__*) ;
 int mpc_decoder_setup (int *,TYPE_8__*) ;
 int mpc_streaminfo_init (TYPE_7__*) ;
 scalar_t__ mpc_streaminfo_read (TYPE_7__*,TYPE_8__*) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int Open( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    es_format_t fmt;
    const uint8_t *p_peek;

    if( vlc_stream_Peek( p_demux->s, &p_peek, 4 ) < 4 )
        return VLC_EGENERIC;

    if( memcmp( p_peek, "MP+", 3 ) )
    {

        const int i_version = (GetDWLE( p_peek ) >> 11)&0x3ff;

        if( i_version < 4 || i_version > 6 )
            return VLC_EGENERIC;

        if( !p_demux->obj.force )
        {

            if( !demux_IsPathExtension( p_demux, ".mpc" ) &&
                !demux_IsPathExtension( p_demux, ".mp+" ) &&
                !demux_IsPathExtension( p_demux, ".mpp" ) )
                return VLC_EGENERIC;
        }
    }


    p_sys = calloc( 1, sizeof( *p_sys ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->i_position = 0;

    p_sys->reader.read = ReaderRead;
    p_sys->reader.seek = ReaderSeek;
    p_sys->reader.tell = ReaderTell;
    p_sys->reader.get_size = ReaderGetSize;
    p_sys->reader.canseek = ReaderCanSeek;
    p_sys->reader.data = p_demux;


    mpc_streaminfo_init( &p_sys->info );
    if( mpc_streaminfo_read( &p_sys->info, &p_sys->reader ) != ERROR_CODE_OK )
        goto error;


    mpc_decoder_setup( &p_sys->decoder, &p_sys->reader );
    if( !mpc_decoder_initialize( &p_sys->decoder, &p_sys->info ) )
        goto error;


    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys;



    es_format_Init( &fmt, AUDIO_ES, VLC_CODEC_FL32 );







    fmt.audio.i_channels = p_sys->info.channels;
    fmt.audio.i_rate = p_sys->info.sample_freq;
    fmt.audio.i_blockalign = 4*fmt.audio.i_channels;
    fmt.audio.i_bitspersample = 32;
    fmt.i_bitrate = fmt.i_bitrate * fmt.audio.i_channels *
                    fmt.audio.i_bitspersample;
    if( p_sys->info.peak_title > 0 )
    {
        fmt.audio_replay_gain.pb_peak[AUDIO_REPLAY_GAIN_TRACK] = 1;
        fmt.audio_replay_gain.pf_peak[AUDIO_REPLAY_GAIN_TRACK] = (float) ((p_sys->info.peak_title) / 32767.0);
        fmt.audio_replay_gain.pb_gain[AUDIO_REPLAY_GAIN_TRACK] = 1;
        fmt.audio_replay_gain.pf_gain[AUDIO_REPLAY_GAIN_TRACK] = (float) ((p_sys->info.gain_title) / 100.0);
    }
    if( p_sys->info.peak_album > 0 )
    {
        fmt.audio_replay_gain.pb_peak[AUDIO_REPLAY_GAIN_ALBUM] = 1;
        fmt.audio_replay_gain.pf_peak[AUDIO_REPLAY_GAIN_ALBUM] = (float) ((p_sys->info.peak_album) / 32767.0);
        fmt.audio_replay_gain.pb_gain[AUDIO_REPLAY_GAIN_ALBUM] = 1;
        fmt.audio_replay_gain.pf_gain[AUDIO_REPLAY_GAIN_ALBUM] = (float) ((p_sys->info.gain_album) / 100.0);
    }




    p_sys->p_es = es_out_Add( p_demux->out, &fmt );
    if( !p_sys->p_es )
        goto error;

    return VLC_SUCCESS;

error:
    free( p_sys );
    return VLC_EGENERIC;
}
