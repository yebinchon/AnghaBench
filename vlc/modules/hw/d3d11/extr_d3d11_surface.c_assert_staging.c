
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int context; int * texture; } ;
typedef TYPE_2__ picture_sys_d3d11_t ;
struct TYPE_22__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_23__ {int * staging; int * procOutTexture; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_24__ {scalar_t__ formatTexture; int name; } ;
typedef TYPE_5__ d3d_format_t ;
struct TYPE_25__ {int d3ddevice; int d3dcontext; } ;
typedef TYPE_6__ d3d11_device_t ;
typedef int UINT ;
struct TYPE_20__ {int Count; } ;
struct TYPE_26__ {int MipLevels; int ArraySize; scalar_t__ Format; int BindFlags; scalar_t__ CPUAccessFlags; int Usage; scalar_t__ MiscFlags; TYPE_1__ SampleDesc; } ;
typedef int HRESULT ;
typedef scalar_t__ DXGI_FORMAT ;
typedef TYPE_7__ D3D11_TEXTURE2D_DESC ;


 int D3D11_BIND_RENDER_TARGET ;
 scalar_t__ D3D11_CPU_ACCESS_READ ;
 int D3D11_FORMAT_SUPPORT_SHADER_LOAD ;
 int D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_OUTPUT ;
 int D3D11_USAGE_DEFAULT ;
 int D3D11_USAGE_STAGING ;
 int DxgiFormatToStr (scalar_t__) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 TYPE_5__* FindD3D11Format (TYPE_3__*,TYPE_6__*,int ,int,int ,int ,int ,int,int) ;
 int ID3D11DeviceContext_GetDevice (int ,int *) ;
 int ID3D11Device_CreateTexture2D (int ,TYPE_7__*,int *,int **) ;
 int ID3D11Device_Release (int ) ;
 int ID3D11Texture2D_GetDesc (int ,TYPE_7__*) ;
 int ID3D11Texture2D_Release (int *) ;
 size_t KNOWN_DXGI_INDEX ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ SetupProcessor (TYPE_3__*,TYPE_6__*,scalar_t__,scalar_t__) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int can_map (TYPE_4__*,int ) ;
 int msg_Dbg (TYPE_3__*,char*,int ) ;
 int msg_Err (TYPE_3__*,char*,int ,int ) ;

__attribute__((used)) static int assert_staging(filter_t *p_filter, picture_sys_d3d11_t *p_sys)
{
    filter_sys_t *sys = p_filter->p_sys;
    HRESULT hr;

    if (sys->staging)
        goto ok;

    D3D11_TEXTURE2D_DESC texDesc;
    ID3D11Texture2D_GetDesc( p_sys->texture[KNOWN_DXGI_INDEX], &texDesc);

    texDesc.MipLevels = 1;
    texDesc.SampleDesc.Count = 1;
    texDesc.MiscFlags = 0;
    texDesc.ArraySize = 1;
    texDesc.Usage = D3D11_USAGE_STAGING;
    texDesc.CPUAccessFlags = D3D11_CPU_ACCESS_READ;
    texDesc.BindFlags = 0;

    d3d11_device_t d3d_dev = { .d3dcontext = p_sys->context };
    ID3D11DeviceContext_GetDevice(d3d_dev.d3dcontext, &d3d_dev.d3ddevice);
    sys->staging = ((void*)0);
    hr = ID3D11Device_CreateTexture2D( d3d_dev.d3ddevice, &texDesc, ((void*)0), &sys->staging);

    if (SUCCEEDED(hr) && FAILED(hr = can_map(sys, p_sys->context)))
        msg_Dbg(p_filter, "can't map default staging texture (hr=0x%lX)", hr);
    ID3D11Device_Release(d3d_dev.d3ddevice);
    if (FAILED(hr)) {
        msg_Err(p_filter, "Failed to create a %s staging texture to extract surface pixels (hr=0x%lX)", DxgiFormatToStr(texDesc.Format), hr );
        return VLC_EGENERIC;
    }
ok:
    return VLC_SUCCESS;
}
