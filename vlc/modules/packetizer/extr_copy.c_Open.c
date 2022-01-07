
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
struct TYPE_9__ {int i_bitspersample; } ;
struct TYPE_13__ {scalar_t__ i_cat; int i_codec; TYPE_1__ audio; } ;
struct TYPE_12__ {int i_codec; } ;
struct TYPE_10__ {int * pf_get_cc; int pf_flush; int pf_packetize; TYPE_8__ fmt_in; TYPE_7__ fmt_out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_11__ {int * pf_parse; int * p_block; } ;
typedef TYPE_3__ decoder_sys_t ;


 scalar_t__ AUDIO_ES ;
 int Flush ;
 int Packetize ;
 int PacketizeSub ;
 int * ParseWMV3 ;
 scalar_t__ SPU_ES ;
 scalar_t__ VIDEO_ES ;

 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int es_format_Copy (TYPE_7__*,TYPE_8__*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* malloc (int) ;
 int msg_Err (TYPE_2__*,char*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_fourcc_GetCodecAudio (int,int ) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_cat != AUDIO_ES &&
        p_dec->fmt_in.i_cat != VIDEO_ES &&
        p_dec->fmt_in.i_cat != SPU_ES )
    {
        msg_Err( p_dec, "invalid ES type" );
        return VLC_EGENERIC;
    }

    p_dec->p_sys = p_sys = malloc( sizeof(*p_sys) );
    if (unlikely(p_sys == ((void*)0)))
        return VLC_ENOMEM;

    p_sys->p_block = ((void*)0);
    switch( p_dec->fmt_in.i_codec )
    {
    case 128:
        p_sys->pf_parse = ParseWMV3;
        break;
    default:
        p_sys->pf_parse = ((void*)0);
        break;
    }

    vlc_fourcc_t fcc = p_dec->fmt_in.i_codec;

    if( p_dec->fmt_in.i_cat == AUDIO_ES )
    {
        fcc = vlc_fourcc_GetCodecAudio( p_dec->fmt_in.i_codec,
                                                     p_dec->fmt_in.audio.i_bitspersample );
        if( !fcc )
        {
            msg_Err( p_dec, "unknown raw audio sample size" );
            free( p_sys );
            return VLC_EGENERIC;
        }
    }


    es_format_Copy( &p_dec->fmt_out, &p_dec->fmt_in );
    p_dec->fmt_out.i_codec = fcc;
    if( p_dec->fmt_in.i_cat == SPU_ES )
        p_dec->pf_packetize = PacketizeSub;
    else
        p_dec->pf_packetize = Packetize;
    p_dec->pf_flush = Flush;
    p_dec->pf_get_cc = ((void*)0);

    return VLC_SUCCESS;
}
