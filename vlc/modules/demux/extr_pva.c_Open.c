
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef char uint8_t ;
struct TYPE_10__ {int b_packetized; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_9__ {int force; } ;
struct TYPE_11__ {int out; TYPE_4__* p_sys; int pf_control; int pf_demux; TYPE_1__ obj; int s; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_12__ {int i_vc; int i_ac; int b_pcr_audio; int * p_es; int * p_pes; void* p_video; void* p_audio; } ;
typedef TYPE_4__ demux_sys_t ;


 int AUDIO_ES ;
 int Control ;
 int Demux ;
 scalar_t__ ReSynch (TYPE_3__*) ;
 int VIDEO_ES ;
 int VLC_CODEC_MPGA ;
 int VLC_CODEC_MPGV ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int es_format_Init (TYPE_2__*,int ,int ) ;
 void* es_out_Add (int ,TYPE_2__*) ;
 TYPE_4__* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_Peek (int ,char const**,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    es_format_t fmt;
    const uint8_t *p_peek;

    if( vlc_stream_Peek( p_demux->s, &p_peek, 8 ) < 8 ) return VLC_EGENERIC;
    if( p_peek[0] != 'A' || p_peek[1] != 'V' || p_peek[4] != 0x55 )
    {

        if( !p_demux->obj.force || ReSynch( p_demux ) )
            return VLC_EGENERIC;
    }

    p_sys = malloc( sizeof( demux_sys_t ) );
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;


    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys = p_sys;


    es_format_Init( &fmt, AUDIO_ES, VLC_CODEC_MPGA );
    fmt.b_packetized = 0;
    p_sys->p_audio = es_out_Add( p_demux->out, &fmt );

    es_format_Init( &fmt, VIDEO_ES, VLC_CODEC_MPGV );
    fmt.b_packetized = 0;
    p_sys->p_video = es_out_Add( p_demux->out, &fmt );

    p_sys->i_vc = -1;
    p_sys->i_ac = -1;
    p_sys->p_pes = ((void*)0);
    p_sys->p_es = ((void*)0);

    p_sys->b_pcr_audio = 0;

    return VLC_SUCCESS;
}
