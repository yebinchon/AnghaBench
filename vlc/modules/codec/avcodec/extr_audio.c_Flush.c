
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {int i_reject_count; int end_date; TYPE_3__* p_context; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_9__ {scalar_t__ codec_id; } ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_MP2 ;
 scalar_t__ AV_CODEC_ID_MP3 ;
 int VLC_TICK_INVALID ;
 int avcodec_flush_buffers (TYPE_3__*) ;
 scalar_t__ avcodec_is_open (TYPE_3__*) ;
 int date_Set (int *,int ) ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *ctx = p_sys->p_context;

    if( avcodec_is_open( ctx ) )
        avcodec_flush_buffers( ctx );
    date_Set( &p_sys->end_date, VLC_TICK_INVALID );

    if( ctx->codec_id == AV_CODEC_ID_MP2 ||
        ctx->codec_id == AV_CODEC_ID_MP3 )
        p_sys->i_reject_count = 3;
}
