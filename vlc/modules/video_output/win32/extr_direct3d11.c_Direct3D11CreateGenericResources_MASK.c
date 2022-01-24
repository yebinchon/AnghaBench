#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_19__ {int /*<<< orphan*/  d3dcontext; int /*<<< orphan*/  d3ddevice; } ;
struct TYPE_20__ {int /*<<< orphan*/ * textureFormat; } ;
struct TYPE_23__ {int /*<<< orphan*/  projectionVShader; TYPE_13__ d3d_dev; int /*<<< orphan*/  hd3d; int /*<<< orphan*/  flatVShader; int /*<<< orphan*/  picQuad; TYPE_16__ regionQuad; int /*<<< orphan*/  display; int /*<<< orphan*/  legacy_shader; int /*<<< orphan*/  prepareWait; } ;
typedef  TYPE_3__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  stencilDesc ;
struct TYPE_25__ {TYPE_1__* RenderTarget; int /*<<< orphan*/  member_0; } ;
struct TYPE_24__ {int /*<<< orphan*/  Query; int /*<<< orphan*/  member_0; } ;
struct TYPE_21__ {int /*<<< orphan*/  DestBlendAlpha; int /*<<< orphan*/  SrcBlendAlpha; void* BlendOpAlpha; int /*<<< orphan*/  DestBlend; int /*<<< orphan*/  SrcBlend; void* BlendOp; int /*<<< orphan*/  RenderTargetWriteMask; int /*<<< orphan*/  BlendEnable; } ;
typedef  int /*<<< orphan*/  ID3D11DepthStencilState ;
typedef  int /*<<< orphan*/  ID3D11BlendState ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_4__ D3D11_QUERY_DESC ;
typedef  int /*<<< orphan*/  D3D11_DEPTH_STENCIL_DESC ;
typedef  TYPE_5__ D3D11_BLEND_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_PRIMARIES_SRGB ; 
 int /*<<< orphan*/  D3D11_BLEND_INV_SRC_ALPHA ; 
 int /*<<< orphan*/  D3D11_BLEND_ONE ; 
 void* D3D11_BLEND_OP_ADD ; 
 int /*<<< orphan*/  D3D11_BLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  D3D11_BLEND_ZERO ; 
 int /*<<< orphan*/  D3D11_COLOR_WRITE_ENABLE_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_13__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_13__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  D3D11_QUERY_EVENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSFER_FUNC_SRGB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    HRESULT hr;

    D3D11_QUERY_DESC query = { 0 };
    query.Query = D3D11_QUERY_EVENT;
    hr = FUNC11(sys->d3d_dev.d3ddevice, &query, &sys->prepareWait);

    ID3D11BlendState *pSpuBlendState;
    D3D11_BLEND_DESC spuBlendDesc = { 0 };
    spuBlendDesc.RenderTarget[0].BlendEnable = TRUE;
    spuBlendDesc.RenderTarget[0].RenderTargetWriteMask = D3D11_COLOR_WRITE_ENABLE_ALL;
    /* output colors */
    spuBlendDesc.RenderTarget[0].BlendOp = D3D11_BLEND_OP_ADD;
    spuBlendDesc.RenderTarget[0].SrcBlend = D3D11_BLEND_SRC_ALPHA; /* keep source intact */
    spuBlendDesc.RenderTarget[0].DestBlend = D3D11_BLEND_INV_SRC_ALPHA; /* RGB colors + inverse alpha (255 is full opaque) */
    /* output alpha  */
    spuBlendDesc.RenderTarget[0].BlendOpAlpha = D3D11_BLEND_OP_ADD;
    spuBlendDesc.RenderTarget[0].SrcBlendAlpha = D3D11_BLEND_ONE; /* keep source intact */
    spuBlendDesc.RenderTarget[0].DestBlendAlpha = D3D11_BLEND_ZERO; /* discard */

    hr = FUNC9(sys->d3d_dev.d3ddevice, &spuBlendDesc, &pSpuBlendState);
    if (FUNC4(hr)) {
       FUNC16(vd, "Could not create SPU blend state. (hr=0x%lX)", hr);
       return VLC_EGENERIC;
    }
    FUNC7(sys->d3d_dev.d3dcontext, pSpuBlendState, NULL, 0xFFFFFFFF);
    FUNC5(pSpuBlendState);

    /* disable depth testing as we're only doing 2D
     * see https://msdn.microsoft.com/en-us/library/windows/desktop/bb205074%28v=vs.85%29.aspx
     * see http://rastertek.com/dx11tut11.html
    */
    D3D11_DEPTH_STENCIL_DESC stencilDesc;
    FUNC14(&stencilDesc, sizeof(stencilDesc));

    ID3D11DepthStencilState *pDepthStencilState;
    hr = FUNC10(sys->d3d_dev.d3ddevice, &stencilDesc, &pDepthStencilState );
    if (FUNC12(hr)) {
        FUNC8(sys->d3d_dev.d3dcontext, pDepthStencilState, 0);
        FUNC6(pDepthStencilState);
    }

    if (sys->regionQuad.textureFormat != NULL)
    {
        hr = FUNC1(vd, &sys->hd3d, sys->legacy_shader, &sys->d3d_dev,
                                      &sys->display, TRANSFER_FUNC_SRGB, COLOR_PRIMARIES_SRGB, true,
                                      &sys->regionQuad);
        if (FUNC4(hr))
        {
            FUNC3(&sys->picQuad);
            FUNC16(vd, "Failed to create the SPU pixel shader. (hr=0x%lX)", hr);
            return VLC_EGENERIC;
        }
    }

    hr = FUNC0(vd, &sys->hd3d, &sys->d3d_dev, &sys->flatVShader);
    if(FUNC4(hr)) {
      FUNC16(vd, "Failed to create the vertex input layout. (hr=0x%lX)", hr);
      return VLC_EGENERIC;
    }

    hr = FUNC2(vd, &sys->hd3d, &sys->d3d_dev, &sys->projectionVShader);
    if(FUNC4(hr)) {
      FUNC16(vd, "Failed to create the projection vertex shader. (hr=0x%lX)", hr);
      return VLC_EGENERIC;
    }

    FUNC13(vd);

    FUNC15(vd, "Direct3D11 resources created");
    return VLC_SUCCESS;
}