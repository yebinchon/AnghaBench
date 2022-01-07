
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; int picsys; } ;
struct dxva2_pic_context {TYPE_1__ ctx; int va_surface; } ;
typedef int picture_context_t ;


 int AcquireD3D9PictureSys (int *) ;
 struct dxva2_pic_context* DXVA2_PICCONTEXT_FROM_PICCTX (int *) ;
 struct dxva2_pic_context* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int va_surface_AddRef (int ) ;

__attribute__((used)) static picture_context_t *dxva2_pic_context_copy(picture_context_t *ctx)
{
    struct dxva2_pic_context *src_ctx = DXVA2_PICCONTEXT_FROM_PICCTX(ctx);
    struct dxva2_pic_context *pic_ctx = malloc(sizeof(*pic_ctx));
    if (unlikely(pic_ctx==((void*)0)))
        return ((void*)0);
    *pic_ctx = *src_ctx;
    va_surface_AddRef(pic_ctx->va_surface);
    AcquireD3D9PictureSys(&pic_ctx->ctx.picsys);
    return &pic_ctx->ctx.s;
}
