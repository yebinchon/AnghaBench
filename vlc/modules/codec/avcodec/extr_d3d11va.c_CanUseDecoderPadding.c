
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int d3ddevice; } ;
struct TYPE_7__ {TYPE_1__ d3d_dev; } ;
typedef TYPE_2__ vlc_va_sys_t ;
struct TYPE_8__ {scalar_t__ VendorId; } ;
typedef int IDXGIAdapter ;
typedef int HRESULT ;
typedef TYPE_3__ DXGI_ADAPTER_DESC ;


 int * D3D11DeviceAdapter (int ) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GPU_MANUFACTURER_QUALCOMM ;
 int IDXGIAdapter_GetDesc (int *,TYPE_3__*) ;
 int IDXGIAdapter_Release (int *) ;

__attribute__((used)) static bool CanUseDecoderPadding(vlc_va_sys_t *sys)
{
    IDXGIAdapter *pAdapter = D3D11DeviceAdapter(sys->d3d_dev.d3ddevice);
    if (!pAdapter)
        return 0;

    DXGI_ADAPTER_DESC adapterDesc;
    HRESULT hr = IDXGIAdapter_GetDesc(pAdapter, &adapterDesc);
    IDXGIAdapter_Release(pAdapter);
    if (FAILED(hr))
        return 0;



    return adapterDesc.VendorId != GPU_MANUFACTURER_QUALCOMM;
}
