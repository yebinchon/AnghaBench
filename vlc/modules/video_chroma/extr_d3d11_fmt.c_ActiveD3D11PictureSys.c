
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct d3d11_pic_context {int picsys; } ;
struct TYPE_3__ {int * context; int * p_sys; } ;
typedef TYPE_1__ picture_t ;
typedef int picture_sys_d3d11_t ;


 struct d3d11_pic_context* D3D11_PICCONTEXT_FROM_PICCTX (int *) ;
 scalar_t__ unlikely (int ) ;

picture_sys_d3d11_t *ActiveD3D11PictureSys(picture_t *pic)
{
    if (unlikely(pic->context == ((void*)0)))
        return pic->p_sys;

    struct d3d11_pic_context *pic_ctx = D3D11_PICCONTEXT_FROM_PICCTX(pic->context);
    return &pic_ctx->picsys;
}
