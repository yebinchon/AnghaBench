
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d11_pic_context {int s; int picsys; } ;
typedef int picture_context_t ;


 int AcquireD3D11PictureSys (int *) ;
 struct d3d11_pic_context* D3D11_PICCONTEXT_FROM_PICCTX (int *) ;
 struct d3d11_pic_context* calloc (int,int) ;
 scalar_t__ unlikely (int ) ;

picture_context_t *d3d11_pic_context_copy(picture_context_t *ctx)
{
    struct d3d11_pic_context *pic_ctx = calloc(1, sizeof(*pic_ctx));
    if (unlikely(pic_ctx==((void*)0)))
        return ((void*)0);
    *pic_ctx = *D3D11_PICCONTEXT_FROM_PICCTX(ctx);
    AcquireD3D11PictureSys(&pic_ctx->picsys);
    return &pic_ctx->s;
}
