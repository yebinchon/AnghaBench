
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IDirect3DVertexShader9 ;
typedef int IDirect3DSurface9 ;
typedef int IDirect3DPixelShader9 ;
typedef int IDirect3DDevice9 ;
typedef scalar_t__ HRESULT ;
typedef int D3DFORMAT ;


 int D3DMULTISAMPLE_NONE ;
 int D3DPOOL_SYSTEMMEM ;
 scalar_t__ D3D_OK ;
 int FALSE ;
 scalar_t__ IDirect3DDevice9_CreateOffscreenPlainSurface (int *,unsigned int,unsigned int,int ,int ,int **,int *) ;
 scalar_t__ IDirect3DDevice9_CreateRenderTarget (int *,unsigned int,unsigned int,int ,int ,int ,int ,int **,int *) ;
 scalar_t__ IDirect3DDevice9_SetPixelShader (int *,int *) ;
 scalar_t__ IDirect3DDevice9_SetRenderTarget (int *,int ,int *) ;
 scalar_t__ IDirect3DDevice9_SetVertexShader (int *,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void setup_device9(IDirect3DDevice9 *device, IDirect3DSurface9 **render_target,
        IDirect3DSurface9 **readback, D3DFORMAT format, unsigned int width, unsigned int height,
        IDirect3DVertexShader9 *vshader, IDirect3DPixelShader9 *pshader)
{
    HRESULT hr;
    hr = IDirect3DDevice9_CreateRenderTarget(device, width, height, format,
            D3DMULTISAMPLE_NONE, 0, FALSE, render_target, ((void*)0));
    ok(hr == D3D_OK, "IDirect3DDevice9_CreateRenderTarget returned: %08x\n", hr);



    hr = IDirect3DDevice9_CreateOffscreenPlainSurface(device, width, height, format,
            D3DPOOL_SYSTEMMEM, readback, ((void*)0));
    ok(hr == D3D_OK, "IDirect3DDevice9_CreateOffscreenPlainSurface returned: %08x\n", hr);

    hr = IDirect3DDevice9_SetRenderTarget(device, 0, *render_target);
    ok(hr == D3D_OK, "IDirect3DDevice9_SetRenderTarget returned: %08x\n", hr);

    hr = IDirect3DDevice9_SetVertexShader(device, vshader);
    ok(hr == D3D_OK, "IDirect3DDevice9_SetVertexShader returned: %08x\n", hr);
    hr = IDirect3DDevice9_SetPixelShader(device, pshader);
    ok(hr == D3D_OK, "IDirect3DDevice9_SetPixelShader returned: %08x\n", hr);
}
