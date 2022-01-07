
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_va_t ;
struct AVCodecContext {TYPE_1__* opaque; } ;
typedef int picture_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {int * p_va; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_9__ {int * opaque; int ** data; int ** buf; } ;
typedef TYPE_3__ AVFrame ;


 int assert (int ) ;
 int * av_buffer_create (int *,int ,int (*) (int *,int *),int *,int ) ;
 int * decoder_NewPicture (TYPE_1__*) ;
 int lavc_ReleaseFrame (int *,int *) ;
 int msg_Err (TYPE_1__*,char*) ;
 int picture_Release (int *) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_va_Get (int *,int *,int **) ;

__attribute__((used)) static int lavc_va_GetFrame(struct AVCodecContext *ctx, AVFrame *frame)
{
    decoder_t *dec = ctx->opaque;
    decoder_sys_t *p_sys = dec->p_sys;
    vlc_va_t *va = p_sys->p_va;

    picture_t *pic;
    pic = decoder_NewPicture(dec);
    if (pic == ((void*)0))
        return -1;

    if (vlc_va_Get(va, pic, &frame->data[0]))
    {
        msg_Err(dec, "hardware acceleration picture allocation failed");
        picture_Release(pic);
        return -1;
    }
    assert(frame->data[0] != ((void*)0));


    frame->data[3] = frame->data[0];

    frame->buf[0] = av_buffer_create(frame->data[0], 0, lavc_ReleaseFrame, pic, 0);
    if (unlikely(frame->buf[0] == ((void*)0)))
    {
        lavc_ReleaseFrame(pic, frame->data[0]);
        return -1;
    }

    frame->opaque = pic;
    return 0;
}
