
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {int i_rate; } ;
struct TYPE_12__ {scalar_t__ i_codec; scalar_t__ i_original_fourcc; TYPE_3__ audio; } ;
struct TYPE_10__ {scalar_t__ i_codec; } ;
struct TYPE_13__ {int pf_flush; int pf_decode; TYPE_4__ fmt_in; TYPE_2__ fmt_out; int pf_packetize; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_9__ {scalar_t__ buf_size; } ;
struct TYPE_14__ {int b_packetizer; int b_has_headers; scalar_t__ i_frame_in_packet; int * p_header; int * p_state; int end_date; int rtp_rate; TYPE_1__ bits; } ;
typedef TYPE_6__ decoder_sys_t ;


 int DecodeAudio ;
 int DecodeRtpSpeexPacket ;
 int Flush ;
 int Packetize ;
 scalar_t__ VLC_CODEC_S16N ;
 scalar_t__ VLC_CODEC_SPEEX ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 scalar_t__ VLC_FOURCC (char,char,char,char) ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;
 TYPE_6__* malloc (int) ;
 int msg_Dbg (TYPE_5__*,char*,int ) ;

__attribute__((used)) static int OpenCommon( vlc_object_t *p_this, bool b_packetizer )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_SPEEX )
        return VLC_EGENERIC;


    if( ( p_dec->p_sys = p_sys = malloc(sizeof(decoder_sys_t)) ) == ((void*)0) )
        return VLC_ENOMEM;
    p_sys->bits.buf_size = 0;
    p_sys->b_packetizer = b_packetizer;
    p_sys->rtp_rate = p_dec->fmt_in.audio.i_rate;
    p_sys->b_has_headers = 0;

    date_Set( &p_sys->end_date, VLC_TICK_INVALID );

    if( b_packetizer )
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_SPEEX;
        p_dec->pf_packetize = Packetize;
    }
    else
    {

        p_dec->fmt_out.i_codec = VLC_CODEC_S16N;







        if (p_dec->fmt_in.i_original_fourcc == VLC_FOURCC('s', 'p', 'x', 'r'))
        {
            msg_Dbg( p_dec, "Using RTP version of Speex decoder @ rate %d.",
            p_dec->fmt_in.audio.i_rate );
            p_dec->pf_decode = DecodeRtpSpeexPacket;
        }
        else
        {
            p_dec->pf_decode = DecodeAudio;
        }
    }
    p_dec->pf_flush = Flush;

    p_sys->p_state = ((void*)0);
    p_sys->p_header = ((void*)0);
    p_sys->i_frame_in_packet = 0;

    return VLC_SUCCESS;
}
