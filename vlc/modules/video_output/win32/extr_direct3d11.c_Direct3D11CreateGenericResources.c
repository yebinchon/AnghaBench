
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;
typedef struct TYPE_19__ TYPE_13__ ;


struct TYPE_22__ {TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_19__ {int d3dcontext; int d3ddevice; } ;
struct TYPE_20__ {int * textureFormat; } ;
struct TYPE_23__ {int projectionVShader; TYPE_13__ d3d_dev; int hd3d; int flatVShader; int picQuad; TYPE_16__ regionQuad; int display; int legacy_shader; int prepareWait; } ;
typedef TYPE_3__ vout_display_sys_t ;
typedef int stencilDesc ;
struct TYPE_25__ {TYPE_1__* RenderTarget; int member_0; } ;
struct TYPE_24__ {int Query; int member_0; } ;
struct TYPE_21__ {int DestBlendAlpha; int SrcBlendAlpha; void* BlendOpAlpha; int DestBlend; int SrcBlend; void* BlendOp; int RenderTargetWriteMask; int BlendEnable; } ;
typedef int ID3D11DepthStencilState ;
typedef int ID3D11BlendState ;
typedef int HRESULT ;
typedef TYPE_4__ D3D11_QUERY_DESC ;
typedef int D3D11_DEPTH_STENCIL_DESC ;
typedef TYPE_5__ D3D11_BLEND_DESC ;


 int COLOR_PRIMARIES_SRGB ;
 int D3D11_BLEND_INV_SRC_ALPHA ;
 int D3D11_BLEND_ONE ;
 void* D3D11_BLEND_OP_ADD ;
 int D3D11_BLEND_SRC_ALPHA ;
 int D3D11_BLEND_ZERO ;
 int D3D11_COLOR_WRITE_ENABLE_ALL ;
 int D3D11_CompileFlatVertexShader (TYPE_2__*,int *,TYPE_13__*,int *) ;
 int D3D11_CompilePixelShader (TYPE_2__*,int *,int ,TYPE_13__*,int *,int ,int ,int,TYPE_16__*) ;
 int D3D11_CompileProjectionVertexShader (TYPE_2__*,int *,TYPE_13__*,int *) ;
 int D3D11_QUERY_EVENT ;
 int D3D11_ReleasePixelShader (int *) ;
 scalar_t__ FAILED (int ) ;
 int ID3D11BlendState_Release (int *) ;
 int ID3D11DepthStencilState_Release (int *) ;
 int ID3D11DeviceContext_OMSetBlendState (int ,int *,int *,int) ;
 int ID3D11DeviceContext_OMSetDepthStencilState (int ,int *,int ) ;
 int ID3D11Device_CreateBlendState (int ,TYPE_5__*,int **) ;
 int ID3D11Device_CreateDepthStencilState (int ,int *,int **) ;
 int ID3D11Device_CreateQuery (int ,TYPE_4__*,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRANSFER_FUNC_SRGB ;
 int TRUE ;
 int UpdatePicQuadPosition (TYPE_2__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int ZeroMemory (int *,int) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*,int ) ;

__attribute__((used)) static int Direct3D11CreateGenericResources(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    HRESULT hr;

    D3D11_QUERY_DESC query = { 0 };
    query.Query = D3D11_QUERY_EVENT;
    hr = ID3D11Device_CreateQuery(sys->d3d_dev.d3ddevice, &query, &sys->prepareWait);

    ID3D11BlendState *pSpuBlendState;
    D3D11_BLEND_DESC spuBlendDesc = { 0 };
    spuBlendDesc.RenderTarget[0].BlendEnable = TRUE;
    spuBlendDesc.RenderTarget[0].RenderTargetWriteMask = D3D11_COLOR_WRITE_ENABLE_ALL;

    spuBlendDesc.RenderTarget[0].BlendOp = D3D11_BLEND_OP_ADD;
    spuBlendDesc.RenderTarget[0].SrcBlend = D3D11_BLEND_SRC_ALPHA;
    spuBlendDesc.RenderTarget[0].DestBlend = D3D11_BLEND_INV_SRC_ALPHA;

    spuBlendDesc.RenderTarget[0].BlendOpAlpha = D3D11_BLEND_OP_ADD;
    spuBlendDesc.RenderTarget[0].SrcBlendAlpha = D3D11_BLEND_ONE;
    spuBlendDesc.RenderTarget[0].DestBlendAlpha = D3D11_BLEND_ZERO;

    hr = ID3D11Device_CreateBlendState(sys->d3d_dev.d3ddevice, &spuBlendDesc, &pSpuBlendState);
    if (FAILED(hr)) {
       msg_Err(vd, "Could not create SPU blend state. (hr=0x%lX)", hr);
       return VLC_EGENERIC;
    }
    ID3D11DeviceContext_OMSetBlendState(sys->d3d_dev.d3dcontext, pSpuBlendState, ((void*)0), 0xFFFFFFFF);
    ID3D11BlendState_Release(pSpuBlendState);





    D3D11_DEPTH_STENCIL_DESC stencilDesc;
    ZeroMemory(&stencilDesc, sizeof(stencilDesc));

    ID3D11DepthStencilState *pDepthStencilState;
    hr = ID3D11Device_CreateDepthStencilState(sys->d3d_dev.d3ddevice, &stencilDesc, &pDepthStencilState );
    if (SUCCEEDED(hr)) {
        ID3D11DeviceContext_OMSetDepthStencilState(sys->d3d_dev.d3dcontext, pDepthStencilState, 0);
        ID3D11DepthStencilState_Release(pDepthStencilState);
    }

    if (sys->regionQuad.textureFormat != ((void*)0))
    {
        hr = D3D11_CompilePixelShader(vd, &sys->hd3d, sys->legacy_shader, &sys->d3d_dev,
                                      &sys->display, TRANSFER_FUNC_SRGB, COLOR_PRIMARIES_SRGB, 1,
                                      &sys->regionQuad);
        if (FAILED(hr))
        {
            D3D11_ReleasePixelShader(&sys->picQuad);
            msg_Err(vd, "Failed to create the SPU pixel shader. (hr=0x%lX)", hr);
            return VLC_EGENERIC;
        }
    }

    hr = D3D11_CompileFlatVertexShader(vd, &sys->hd3d, &sys->d3d_dev, &sys->flatVShader);
    if(FAILED(hr)) {
      msg_Err(vd, "Failed to create the vertex input layout. (hr=0x%lX)", hr);
      return VLC_EGENERIC;
    }

    hr = D3D11_CompileProjectionVertexShader(vd, &sys->hd3d, &sys->d3d_dev, &sys->projectionVShader);
    if(FAILED(hr)) {
      msg_Err(vd, "Failed to create the projection vertex shader. (hr=0x%lX)", hr);
      return VLC_EGENERIC;
    }

    UpdatePicQuadPosition(vd);

    msg_Dbg(vd, "Direct3D11 resources created");
    return VLC_SUCCESS;
}
