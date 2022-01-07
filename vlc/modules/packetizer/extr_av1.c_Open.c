
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_12__ {int b_packetized; } ;
struct TYPE_13__ {scalar_t__ i_codec; } ;
struct TYPE_9__ {int pf_flush; int pf_packetize; TYPE_5__ fmt_out; TYPE_6__ fmt_in; TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_8__ {int b_has_visible_frame; void* pts; void* dts; } ;
struct TYPE_10__ {scalar_t__ i_next_block_flags; scalar_t__ i_seen; TYPE_1__ tu; int * p_sequence_header; int * p_sequence_header_block; } ;
typedef TYPE_3__ av1_sys_t ;
struct TYPE_11__ {int post; int frame; int pre; } ;


 int INITQ (int ) ;
 int PacketizeFlush ;
 int PacketizeOBU ;
 scalar_t__ VLC_CODEC_AV1 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 void* VLC_TICK_INVALID ;
 TYPE_3__* calloc (int,int) ;
 int es_format_Copy (TYPE_5__*,TYPE_6__*) ;
 int obus ;
 TYPE_4__ tu ;

__attribute__((used)) static int Open(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t*)p_this;
    av1_sys_t *p_sys;

    if (p_dec->fmt_in.i_codec != VLC_CODEC_AV1)
        return VLC_EGENERIC;

    p_dec->p_sys = p_sys = calloc(1, sizeof(av1_sys_t));
    if (!p_dec->p_sys)
        return VLC_ENOMEM;

    INITQ(obus);
    p_sys->p_sequence_header_block = ((void*)0);
    p_sys->p_sequence_header = ((void*)0);
    p_sys->tu.b_has_visible_frame = 0;
    p_sys->tu.dts = VLC_TICK_INVALID;
    p_sys->tu.pts = VLC_TICK_INVALID;
    p_sys->i_seen = 0;
    p_sys->i_next_block_flags = 0;
    INITQ(tu.pre);
    INITQ(tu.frame);
    INITQ(tu.post);


    es_format_Copy(&p_dec->fmt_out, &p_dec->fmt_in);
    p_dec->fmt_out.b_packetized = 1;

    p_dec->pf_packetize = PacketizeOBU;
    p_dec->pf_flush = PacketizeFlush;

    return VLC_SUCCESS;
}
