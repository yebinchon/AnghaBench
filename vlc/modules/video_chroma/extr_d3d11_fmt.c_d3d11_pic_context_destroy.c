
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d11_pic_context {int picsys; } ;
typedef int picture_context_t ;


 struct d3d11_pic_context* D3D11_PICCONTEXT_FROM_PICCTX (int *) ;
 int ReleaseD3D11PictureSys (int *) ;
 int free (struct d3d11_pic_context*) ;

void d3d11_pic_context_destroy(picture_context_t *ctx)
{
    struct d3d11_pic_context *pic_ctx = D3D11_PICCONTEXT_FROM_PICCTX(ctx);
    ReleaseD3D11PictureSys(&pic_ctx->picsys);
    free(pic_ctx);
}
