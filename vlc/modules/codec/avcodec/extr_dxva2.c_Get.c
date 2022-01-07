
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_15__ {TYPE_4__* sys; } ;
typedef TYPE_3__ vlc_va_t ;
struct TYPE_16__ {int va_pool; int device; int devmng; } ;
typedef TYPE_4__ vlc_va_sys_t ;
typedef int vlc_va_surface_t ;
typedef int uint8_t ;
struct TYPE_17__ {int * context; } ;
typedef TYPE_5__ picture_t ;
struct TYPE_13__ {scalar_t__ surface; } ;
struct TYPE_14__ {TYPE_1__ picsys; } ;
struct TYPE_12__ {TYPE_2__ ctx; } ;
typedef scalar_t__ HRESULT ;


 scalar_t__ DXVA2_E_NEW_VIDEO_DEVICE ;
 TYPE_11__* DXVA2_PICCONTEXT_FROM_PICCTX (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IDirect3DDeviceManager9_TestDevice (int ,int ) ;
 int * NewSurfacePicContext (TYPE_3__*,int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOITEM ;
 int VLC_SUCCESS ;
 int msg_Err (TYPE_3__*,char*,scalar_t__) ;
 int msg_Warn (TYPE_3__*,char*) ;
 scalar_t__ unlikely (int ) ;
 int * va_pool_Get (int ) ;
 int va_surface_Release (int *) ;

__attribute__((used)) static int Get(vlc_va_t *va, picture_t *pic, uint8_t **data)
{
    vlc_va_sys_t *sys = va->sys;


    HRESULT hr = IDirect3DDeviceManager9_TestDevice(sys->devmng, sys->device);
    if (FAILED(hr)) {
        if (hr == DXVA2_E_NEW_VIDEO_DEVICE)
            msg_Warn(va, "New video device detected.");
        else
            msg_Err(va, "device not usable. (hr=0x%lX)", hr);
        return VLC_EGENERIC;
    }

    vlc_va_surface_t *va_surface = va_pool_Get(sys->va_pool);
    if (unlikely(va_surface==((void*)0)))
        return VLC_ENOITEM;

    pic->context = NewSurfacePicContext(va, va_surface);
    if (unlikely(pic->context == ((void*)0)))
    {
        va_surface_Release(va_surface);
        return VLC_ENOITEM;
    }
    *data = (uint8_t*)DXVA2_PICCONTEXT_FROM_PICCTX(pic->context)->ctx.picsys.surface;
    return VLC_SUCCESS;
}
