
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int obj; } ;
typedef TYPE_1__ d3d9_handle_t ;
struct TYPE_10__ {int owner; int BufferFormat; int * dev; int adapterId; int caps; } ;
typedef TYPE_2__ d3d9_device_t ;
struct TYPE_12__ {int DeviceType; int AdapterOrdinal; } ;
struct TYPE_11__ {int Format; } ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;
typedef TYPE_3__ D3DDISPLAYMODE ;
typedef TYPE_4__ D3DDEVICE_CREATION_PARAMETERS ;


 scalar_t__ FAILED (int ) ;
 int IDirect3D9_GetAdapterDisplayMode (int ,int ,TYPE_3__*) ;
 int IDirect3D9_GetDeviceCaps (int ,int ,int ,int *) ;
 int IDirect3DDevice9_AddRef (int *) ;
 int IDirect3DDevice9_GetCreationParameters (int *,TYPE_4__*) ;
 int S_OK ;
 int ZeroMemory (int *,int) ;

HRESULT D3D9_CreateDeviceExternal(IDirect3DDevice9 *dev, d3d9_handle_t *hd3d,
                                  d3d9_device_t *out)
{
    D3DDEVICE_CREATION_PARAMETERS params;
    HRESULT hr = IDirect3DDevice9_GetCreationParameters(dev, &params);
    if (FAILED(hr))
       return hr;
    out->dev = dev;
    out->owner = 0;
    out->adapterId = params.AdapterOrdinal;
    ZeroMemory(&out->caps, sizeof(out->caps));
    hr = IDirect3D9_GetDeviceCaps(hd3d->obj, out->adapterId, params.DeviceType, &out->caps);
    if (FAILED(hr))
       return hr;
    D3DDISPLAYMODE d3ddm;
    hr = IDirect3D9_GetAdapterDisplayMode(hd3d->obj, out->adapterId, &d3ddm);
    if (FAILED(hr))
        return hr;
    IDirect3DDevice9_AddRef(out->dev);
    out->BufferFormat = d3ddm.Format;
    return S_OK;
}
