
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct wddm_version {int revision; } ;
struct TYPE_10__ {int d3ddevice; } ;
struct TYPE_9__ {scalar_t__ VendorId; int DeviceId; } ;
struct TYPE_7__ {TYPE_5__ d3d_dev; } ;
typedef int IDXGIAdapter ;
typedef TYPE_3__ DXGI_ADAPTER_DESC ;


 int D3D11CheckDriverVersion (TYPE_5__*,scalar_t__,struct wddm_version*) ;
 int * D3D11DeviceAdapter (int ) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GPU_MANUFACTURER_AMD ;
 int IDXGIAdapter_GetDesc (int *,TYPE_3__*) ;
 int IDXGIAdapter_Release (int *) ;
 int VLC_SUCCESS ;

__attribute__((used)) static bool BogusZeroCopy(vout_display_t *vd)
{
    IDXGIAdapter *p_adapter = D3D11DeviceAdapter(vd->sys->d3d_dev.d3ddevice);
    if (!p_adapter)
        return 0;

    DXGI_ADAPTER_DESC adapterDesc;
    if (FAILED(IDXGIAdapter_GetDesc(p_adapter, &adapterDesc)))
        return 0;
    IDXGIAdapter_Release(p_adapter);

    if (adapterDesc.VendorId != GPU_MANUFACTURER_AMD)
        return 0;

    switch (adapterDesc.DeviceId)
    {
    case 0x687F:
    case 0x6863:
    case 0x15DD:
    {
        struct wddm_version WDDM = {
            .revision = 14011,
        };
        return D3D11CheckDriverVersion(&vd->sys->d3d_dev, GPU_MANUFACTURER_AMD, &WDDM) != VLC_SUCCESS;
    }
    default:
        return 0;
    }
}
