
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct AVCodecContext {int pix_fmt; TYPE_1__* opaque; } ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_11__ {int lock; int * p_va; int b_direct_rendering; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int * opaque; int ** buf; scalar_t__* linesize; int ** data; } ;
typedef TYPE_3__ AVFrame ;


 unsigned int AV_NUM_DATA_POINTERS ;
 int avcodec_default_get_buffer2 (struct AVCodecContext*,TYPE_3__*,int) ;
 scalar_t__ decoder_UpdateVideoOutput (TYPE_1__*,int *) ;
 scalar_t__ lavc_UpdateVideoFormat (TYPE_1__*,struct AVCodecContext*,int ,int ,int *) ;
 int lavc_dr_GetFrame (struct AVCodecContext*,TYPE_3__*) ;
 int lavc_va_GetFrame (struct AVCodecContext*,TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int lavc_GetFrame(struct AVCodecContext *ctx, AVFrame *frame, int flags)
{
    decoder_t *dec = ctx->opaque;
    decoder_sys_t *sys = dec->p_sys;

    for (unsigned i = 0; i < AV_NUM_DATA_POINTERS; i++)
    {
        frame->data[i] = ((void*)0);
        frame->linesize[i] = 0;
        frame->buf[i] = ((void*)0);
    }
    frame->opaque = ((void*)0);

    vlc_mutex_lock(&sys->lock);
    if (sys->p_va == ((void*)0))
    {
        if (!sys->b_direct_rendering)
        {
            vlc_mutex_unlock(&sys->lock);
            return avcodec_default_get_buffer2(ctx, frame, flags);
        }




        if (lavc_UpdateVideoFormat(dec, ctx, ctx->pix_fmt, ctx->pix_fmt, ((void*)0)) ||
            decoder_UpdateVideoOutput(dec, ((void*)0)))
        {
            vlc_mutex_unlock(&sys->lock);
            return -1;
        }
    }

    if (sys->p_va != ((void*)0))
    {
        int ret = lavc_va_GetFrame(ctx, frame);
        vlc_mutex_unlock(&sys->lock);
        return ret;
    }



    int ret = lavc_dr_GetFrame(ctx, frame);
    vlc_mutex_unlock(&sys->lock);
    if (ret)
        ret = avcodec_default_get_buffer2(ctx, frame, flags);
    return ret;
}
