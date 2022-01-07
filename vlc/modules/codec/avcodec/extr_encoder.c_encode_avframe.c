
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int encoder_t ;
struct TYPE_13__ {TYPE_5__* p_context; } ;
typedef TYPE_2__ encoder_sys_t ;
typedef int block_t ;
struct TYPE_12__ {int den; } ;
struct TYPE_15__ {TYPE_1__ time_base; } ;
struct TYPE_14__ {int duration; scalar_t__ size; int * data; } ;
typedef TYPE_3__ AVPacket ;
typedef int AVFrame ;


 int AVERROR (int ) ;
 int EAGAIN ;
 int av_init_packet (TYPE_3__*) ;
 int av_packet_unref (TYPE_3__*) ;
 int avcodec_receive_packet (TYPE_5__*,TYPE_3__*) ;
 int avcodec_send_frame (TYPE_5__*,int *) ;
 int msg_Warn (int *,char*,...) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_av_packet_Wrap (TYPE_3__*,int,TYPE_5__*) ;

__attribute__((used)) static block_t *encode_avframe( encoder_t *p_enc, encoder_sys_t *p_sys, AVFrame *frame )
{
    AVPacket av_pkt;
    av_pkt.data = ((void*)0);
    av_pkt.size = 0;

    av_init_packet( &av_pkt );

    int ret = avcodec_send_frame( p_sys->p_context, frame );
    if( frame && ret != 0 && ret != AVERROR(EAGAIN) )
    {
        msg_Warn( p_enc, "cannot send one frame to encoder %d", ret );
        return ((void*)0);
    }
    ret = avcodec_receive_packet( p_sys->p_context, &av_pkt );
    if( ret != 0 && ret != AVERROR(EAGAIN) )
    {
        msg_Warn( p_enc, "cannot encode one frame" );
        return ((void*)0);
    }

    block_t *p_block = vlc_av_packet_Wrap( &av_pkt,
            av_pkt.duration / p_sys->p_context->time_base.den, p_sys->p_context );
    if( unlikely(p_block == ((void*)0)) )
    {
        av_packet_unref( &av_pkt );
        return ((void*)0);
    }
    return p_block;
}
