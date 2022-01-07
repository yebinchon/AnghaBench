
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct picture_context_t {struct picture_context_t* (* copy ) (struct picture_context_t*) ;int destroy; } ;
struct TYPE_2__ {struct picture_context_t s; int va_dpy; int surface; } ;
struct vaapi_pic_ctx {TYPE_1__ ctx; int picref; } ;


 struct vaapi_pic_ctx* malloc (int) ;
 int pic_ctx_destroy_cb ;
 int picture_Hold (int ) ;

__attribute__((used)) static struct picture_context_t *
pic_ctx_copy_cb(struct picture_context_t *opaque)
{
    struct vaapi_pic_ctx *src_ctx = (struct vaapi_pic_ctx *) opaque;
    struct vaapi_pic_ctx *dst_ctx = malloc(sizeof *dst_ctx);
    if (dst_ctx == ((void*)0))
        return ((void*)0);

    dst_ctx->ctx.s.destroy = pic_ctx_destroy_cb;
    dst_ctx->ctx.s.copy = pic_ctx_copy_cb;
    dst_ctx->ctx.surface = src_ctx->ctx.surface;
    dst_ctx->ctx.va_dpy = src_ctx->ctx.va_dpy;
    dst_ctx->picref = picture_Hold(src_ctx->picref);
    return &dst_ctx->ctx.s;
}
