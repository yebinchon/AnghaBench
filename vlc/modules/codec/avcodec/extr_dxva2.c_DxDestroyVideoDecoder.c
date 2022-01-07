
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int surface_count; scalar_t__ decoder; } ;
struct TYPE_5__ {scalar_t__ dxva2_dll; int hd3d; int d3d_dev; int devmng; int d3ddec; int device; scalar_t__* hw_surface; TYPE_1__ hw; } ;
typedef TYPE_2__ vlc_va_sys_t ;


 int D3D9_Destroy (int *) ;
 int D3D9_ReleaseDevice (int *) ;
 int FreeLibrary (scalar_t__) ;
 int IDirect3DDeviceManager9_CloseDeviceHandle (int ,int ) ;
 int IDirect3DDeviceManager9_Release (int ) ;
 int IDirect3DSurface9_Release (scalar_t__) ;
 int IDirectXVideoDecoderService_Release (int ) ;
 int IDirectXVideoDecoder_Release (scalar_t__) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void DxDestroyVideoDecoder(void *opaque)
{
    vlc_va_sys_t *sys = opaque;

    if (sys->hw.decoder)
        IDirectXVideoDecoder_Release(sys->hw.decoder);
    if (sys->hw_surface[0])
    {
        for (unsigned i = 0; i < sys->hw.surface_count; i++)
            IDirect3DSurface9_Release(sys->hw_surface[i]);
    }
    IDirect3DDeviceManager9_CloseDeviceHandle(sys->devmng, sys->device);
    IDirectXVideoDecoderService_Release(sys->d3ddec);
    IDirect3DDeviceManager9_Release(sys->devmng);
    D3D9_ReleaseDevice(&sys->d3d_dev);
    D3D9_Destroy( &sys->hd3d );
    if (sys->dxva2_dll)
        FreeLibrary(sys->dxva2_dll);

    free(sys);
}
