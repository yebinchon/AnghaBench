
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wddm_version {scalar_t__ wddm; scalar_t__ d3d_features; scalar_t__ revision; scalar_t__ build; } ;
struct TYPE_6__ {scalar_t__ wddm; scalar_t__ d3d_features; scalar_t__ revision; scalar_t__ build; } ;
struct TYPE_7__ {TYPE_1__ WDDM; int d3ddevice; } ;
typedef TYPE_2__ d3d11_device_t ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ VendorId; } ;
typedef int IDXGIAdapter ;
typedef int HRESULT ;
typedef TYPE_3__ DXGI_ADAPTER_DESC ;


 int * D3D11DeviceAdapter (int ) ;
 scalar_t__ FAILED (int ) ;
 int IDXGIAdapter_GetDesc (int *,TYPE_3__*) ;
 int IDXGIAdapter_Release (int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

int D3D11CheckDriverVersion(d3d11_device_t *d3d_dev, UINT vendorId, const struct wddm_version *min_ver)
{
    IDXGIAdapter *pAdapter = D3D11DeviceAdapter(d3d_dev->d3ddevice);
    if (!pAdapter)
        return VLC_EGENERIC;

    DXGI_ADAPTER_DESC adapterDesc;
    HRESULT hr = IDXGIAdapter_GetDesc(pAdapter, &adapterDesc);
    IDXGIAdapter_Release(pAdapter);
    if (FAILED(hr))
        return VLC_EGENERIC;

    if (vendorId && adapterDesc.VendorId != vendorId)
        return VLC_SUCCESS;

    if (min_ver->wddm)
    {
        if (d3d_dev->WDDM.wddm > min_ver->wddm)
            return VLC_SUCCESS;
        if (d3d_dev->WDDM.wddm != min_ver->wddm)
            return VLC_EGENERIC;
    }
    if (min_ver->d3d_features)
    {
        if (d3d_dev->WDDM.d3d_features > min_ver->d3d_features)
            return VLC_SUCCESS;
        if (d3d_dev->WDDM.d3d_features != min_ver->d3d_features)
            return VLC_EGENERIC;
    }
    if (min_ver->revision)
    {
        if (d3d_dev->WDDM.revision > min_ver->revision)
            return VLC_SUCCESS;
        if (d3d_dev->WDDM.revision != min_ver->revision)
            return VLC_EGENERIC;
    }
    if (min_ver->build)
    {
        if (d3d_dev->WDDM.build > min_ver->build)
            return VLC_SUCCESS;
        if (d3d_dev->WDDM.build != min_ver->build)
            return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}
