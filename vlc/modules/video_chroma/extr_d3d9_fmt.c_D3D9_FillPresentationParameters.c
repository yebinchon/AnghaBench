
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int obj; } ;
typedef TYPE_1__ d3d9_handle_t ;
struct TYPE_11__ {int adapterId; } ;
typedef TYPE_2__ d3d9_device_t ;
struct TYPE_13__ {int Format; } ;
struct TYPE_12__ {int BackBufferCount; void* BackBufferHeight; void* BackBufferWidth; int BackBufferFormat; int SwapEffect; int * hDeviceWindow; int EnableAutoDepthStencil; int PresentationInterval; int MultiSampleType; int Windowed; int Flags; } ;
typedef int HRESULT ;
typedef TYPE_3__ D3DPRESENT_PARAMETERS ;
typedef TYPE_4__ D3DDISPLAYMODE ;


 int D3DMULTISAMPLE_NONE ;
 int D3DPRESENTFLAG_VIDEO ;
 int D3DPRESENT_INTERVAL_DEFAULT ;
 int D3DSWAPEFFECT_COPY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 void* GetSystemMetrics (int ) ;
 int IDirect3D9_GetAdapterDisplayMode (int ,int ,TYPE_4__*) ;
 int SM_CXVIRTUALSCREEN ;
 int SM_CYVIRTUALSCREEN ;
 int TRUE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int ZeroMemory (TYPE_3__*,int) ;

int D3D9_FillPresentationParameters(d3d9_handle_t *hd3d,
                                    const d3d9_device_t *d3ddev,
                                    D3DPRESENT_PARAMETERS *d3dpp)
{




    D3DDISPLAYMODE d3ddm;
    HRESULT hr = IDirect3D9_GetAdapterDisplayMode(hd3d->obj, d3ddev->adapterId, &d3ddm);
    if (FAILED(hr))
        return VLC_EGENERIC;


    ZeroMemory(d3dpp, sizeof(D3DPRESENT_PARAMETERS));
    d3dpp->Flags = D3DPRESENTFLAG_VIDEO;
    d3dpp->Windowed = TRUE;
    d3dpp->MultiSampleType = D3DMULTISAMPLE_NONE;
    d3dpp->PresentationInterval = D3DPRESENT_INTERVAL_DEFAULT;
    d3dpp->EnableAutoDepthStencil = FALSE;
    d3dpp->hDeviceWindow = ((void*)0);
    d3dpp->SwapEffect = D3DSWAPEFFECT_COPY;
    d3dpp->BackBufferFormat = d3ddm.Format;
    d3dpp->BackBufferCount = 1;
    d3dpp->BackBufferWidth = GetSystemMetrics(SM_CXVIRTUALSCREEN);
    d3dpp->BackBufferHeight = GetSystemMetrics(SM_CYVIRTUALSCREEN);

    return VLC_SUCCESS;
}
