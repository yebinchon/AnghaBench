
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * renderSrc; int * resource; } ;
struct TYPE_3__ {int s; TYPE_2__ picsys; } ;
struct d3d11va_pic_context {TYPE_1__ ctx; int va_surface; } ;
typedef int picture_context_t ;


 int AcquireD3D11PictureSys (TYPE_2__*) ;
 struct d3d11va_pic_context* D3D11VA_PICCONTEXT_FROM_PICCTX (int *) ;
 int D3D11_MAX_SHADER_VIEW ;
 struct d3d11va_pic_context* malloc (int) ;
 scalar_t__ unlikely (int ) ;
 int va_surface_AddRef (int ) ;

__attribute__((used)) static picture_context_t *d3d11va_pic_context_copy(picture_context_t *ctx)
{
    struct d3d11va_pic_context *src_ctx = D3D11VA_PICCONTEXT_FROM_PICCTX(ctx);
    struct d3d11va_pic_context *pic_ctx = malloc(sizeof(*pic_ctx));
    if (unlikely(pic_ctx==((void*)0)))
        return ((void*)0);
    *pic_ctx = *src_ctx;
    va_surface_AddRef(pic_ctx->va_surface);
    for (int i=0;i<D3D11_MAX_SHADER_VIEW; i++)
    {
        pic_ctx->ctx.picsys.resource[i] = src_ctx->ctx.picsys.resource[i];
        pic_ctx->ctx.picsys.renderSrc[i] = src_ctx->ctx.picsys.renderSrc[i];
    }
    AcquireD3D11PictureSys(&pic_ctx->ctx.picsys);
    return &pic_ctx->ctx.s;
}
