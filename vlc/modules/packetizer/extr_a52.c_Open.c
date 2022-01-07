
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_a52_header_t ;
struct TYPE_7__ {scalar_t__ i_rate; } ;
struct TYPE_8__ {int i_codec; TYPE_2__ audio; } ;
struct TYPE_6__ {int i_codec; TYPE_2__ audio; } ;
struct TYPE_9__ {int * pf_get_cc; int pf_flush; int pf_packetize; TYPE_3__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_10__ {int b_discontuinity; int bytestream; int frame; int i_prev_bytestream_pts; int end_date; int i_state; } ;
typedef TYPE_5__ decoder_sys_t ;


 int PacketizeBlock ;
 int PacketizeFlush ;
 int STATE_NOSYNC ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int block_BytestreamInit (int *) ;
 int date_Set (int *,int ) ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    switch( p_dec->fmt_in.i_codec )
    {
    case 128:
    case 129:
        break;
    default:
        return VLC_EGENERIC;
    }


    if( ( p_dec->p_sys = p_sys =
          (decoder_sys_t *)malloc(sizeof(decoder_sys_t)) ) == ((void*)0) )
        return VLC_ENOMEM;


    p_sys->i_state = STATE_NOSYNC;
    date_Set( &p_sys->end_date, VLC_TICK_INVALID );
    p_sys->b_discontuinity = 0;
    p_sys->i_prev_bytestream_pts = VLC_TICK_INVALID;
    memset(&p_sys->frame, 0, sizeof(vlc_a52_header_t));

    block_BytestreamInit( &p_sys->bytestream );


    p_dec->fmt_out.i_codec = p_dec->fmt_in.i_codec;
    p_dec->fmt_out.audio = p_dec->fmt_in.audio;
    p_dec->fmt_out.audio.i_rate = 0;


    p_dec->pf_packetize = PacketizeBlock;
    p_dec->pf_flush = PacketizeFlush;
    p_dec->pf_get_cc = ((void*)0);
    return VLC_SUCCESS;
}
