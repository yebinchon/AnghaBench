
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_dts_header_t ;
struct TYPE_7__ {scalar_t__ i_codec; int audio; } ;
struct TYPE_6__ {scalar_t__ i_codec; int audio; } ;
struct TYPE_8__ {int * pf_get_cc; int pf_flush; int pf_packetize; TYPE_2__ fmt_in; TYPE_1__ fmt_out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_9__ {int b_date_set; int b_discontinuity; int bytestream; int second; int first; int i_pts; int end_date; int i_state; } ;
typedef TYPE_4__ decoder_sys_t ;


 int PacketizeBlock ;
 int PacketizeFlush ;
 int STATE_NOSYNC ;
 scalar_t__ VLC_CODEC_DTS ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int block_BytestreamInit (int *) ;
 int date_Set (int *,int ) ;
 TYPE_4__* malloc (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_DTS )
        return VLC_EGENERIC;


    if( ( p_dec->p_sys = p_sys = malloc(sizeof(decoder_sys_t)) ) == ((void*)0) )
        return VLC_ENOMEM;


    p_sys->i_state = STATE_NOSYNC;
    date_Set( &p_sys->end_date, VLC_TICK_INVALID );
    p_sys->i_pts = VLC_TICK_INVALID;
    p_sys->b_date_set = 0;
    p_sys->b_discontinuity = 0;
    memset(&p_sys->first, 0, sizeof(vlc_dts_header_t));
    memset(&p_sys->second, 0, sizeof(vlc_dts_header_t));
    block_BytestreamInit( &p_sys->bytestream );


    p_dec->fmt_out.i_codec = p_dec->fmt_in.i_codec;
    p_dec->fmt_out.audio = p_dec->fmt_in.audio;


    p_dec->pf_packetize = PacketizeBlock;
    p_dec->pf_flush = PacketizeFlush;
    p_dec->pf_get_cc = ((void*)0);
    return VLC_SUCCESS;
}
