
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vlc_va_t ;
struct TYPE_7__ {int * hw_surface; } ;
typedef TYPE_3__ vlc_va_sys_t ;
typedef int vlc_va_surface_t ;
struct TYPE_5__ {int s; } ;
struct dxva2_pic_context {TYPE_1__ ctx; int * va_surface; } ;
typedef int picture_context_t ;


 struct dxva2_pic_context* CreatePicContext (int ) ;
 scalar_t__ unlikely (int ) ;
 size_t va_surface_GetIndex (int *) ;

__attribute__((used)) static picture_context_t* NewSurfacePicContext(vlc_va_t *va, vlc_va_surface_t *va_surface)
{
    vlc_va_sys_t *sys = va->sys;
    struct dxva2_pic_context *pic_ctx = CreatePicContext(sys->hw_surface[va_surface_GetIndex(va_surface)]);
    if (unlikely(pic_ctx==((void*)0)))
        return ((void*)0);
    pic_ctx->va_surface = va_surface;
    return &pic_ctx->ctx.s;
}
