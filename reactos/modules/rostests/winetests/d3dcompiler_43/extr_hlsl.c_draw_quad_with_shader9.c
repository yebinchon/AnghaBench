
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vertex {int dummy; } ;
typedef int IDirect3DVertexBuffer9 ;
typedef int IDirect3DDevice9 ;
typedef scalar_t__ HRESULT ;
typedef int D3DXMATRIX ;


 int D3DCLEAR_TARGET ;
 int D3DCOLOR_XRGB (int ,int ,int ) ;
 int D3DPT_TRIANGLESTRIP ;
 int D3DTS_PROJECTION ;
 int D3DXMatrixOrthoLH (int *,float,float,float,float) ;
 scalar_t__ D3D_OK ;
 scalar_t__ IDirect3DDevice9_BeginScene (int *) ;
 scalar_t__ IDirect3DDevice9_Clear (int *,int ,int *,int ,int ,float,int ) ;
 scalar_t__ IDirect3DDevice9_DrawPrimitive (int *,int ,int ,int) ;
 scalar_t__ IDirect3DDevice9_EndScene (int *) ;
 scalar_t__ IDirect3DDevice9_SetStreamSource (int *,int ,int *,int ,int) ;
 int IDirect3DDevice9_SetTransform (int *,int ,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void draw_quad_with_shader9(IDirect3DDevice9 *device, IDirect3DVertexBuffer9 *quad_geometry)
{
    HRESULT hr;
    D3DXMATRIX projection_matrix;

    D3DXMatrixOrthoLH(&projection_matrix, 2.0f, 2.0f, 0.0f, 1.0f);
    IDirect3DDevice9_SetTransform(device, D3DTS_PROJECTION, &projection_matrix);

    hr = IDirect3DDevice9_Clear(device, 0, ((void*)0), D3DCLEAR_TARGET, D3DCOLOR_XRGB(0, 0, 0), 1.0f, 0);
    ok(hr == D3D_OK, "IDirect3DDevice9_Clear returned: %08x\n", hr);

    hr = IDirect3DDevice9_BeginScene(device);
    ok(hr == D3D_OK, "IDirect3DDevice9_BeginScene returned: %08x\n", hr);

    hr = IDirect3DDevice9_SetStreamSource(device, 0, quad_geometry, 0, sizeof(struct vertex));
    ok(hr == D3D_OK, "IDirect3DDevice9_SetStreamSource returned: %08x\n", hr);
    hr = IDirect3DDevice9_DrawPrimitive(device, D3DPT_TRIANGLESTRIP, 0, 2);
    ok(hr == D3D_OK, "IDirect3DDevice9_DrawPrimitive returned: %08x\n", hr);

    hr = IDirect3DDevice9_EndScene(device);
    ok(hr == D3D_OK, "IDirect3DDevice9_EndScene returned: %08x\n", hr);
}
