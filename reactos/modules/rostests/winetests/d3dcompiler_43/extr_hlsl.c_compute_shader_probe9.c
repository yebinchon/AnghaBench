
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int a; int b; int g; int r; } ;
struct hlsl_probe_info {int y; TYPE_3__ c; int message; int x; int epsilon; } ;
struct TYPE_7__ {int Pitch; TYPE_1__* pBits; } ;
struct TYPE_6__ {int a; int b; int g; int r; } ;
typedef int IDirect3DVertexShader9 ;
typedef int IDirect3DVertexBuffer9 ;
typedef int IDirect3DSurface9 ;
typedef int IDirect3DPixelShader9 ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;
typedef TYPE_1__ D3DXCOLOR ;
typedef TYPE_2__ D3DLOCKED_RECT ;


 int D3DFMT_A32B32G32R32F ;
 int D3DLOCK_READONLY ;
 int D3D_OK ;
 int IDirect3DDevice9_GetRenderTargetData (int *,int *,int *) ;
 int IDirect3DDevice9_Present (int *,int *,int *,int *,int *) ;
 int IDirect3DSurface9_LockRect (int *,TYPE_2__*,int *,int ) ;
 int IDirect3DSurface9_Release (int *) ;
 int IDirect3DSurface9_UnlockRect (int *) ;
 int colors_match (TYPE_3__,TYPE_1__,int ) ;
 int draw_quad_with_shader9 (int *,int *) ;
 int ok (int,char*,unsigned int,...) ;
 int setup_device9 (int *,int **,int **,int ,unsigned int,unsigned int,int *,int *) ;

__attribute__((used)) static void compute_shader_probe9(IDirect3DDevice9 *device, IDirect3DVertexShader9 *vshader,
        IDirect3DPixelShader9 *pshader, IDirect3DVertexBuffer9 *quad_geometry,
        const struct hlsl_probe_info *probes, unsigned int count,
        unsigned int width, unsigned int height, unsigned int line_number)
{
    IDirect3DSurface9 *render_target;
    IDirect3DSurface9 *readback;

    HRESULT hr;
    D3DLOCKED_RECT lr;
    D3DXCOLOR *pbits_data;
    unsigned int i;

    setup_device9(device, &render_target, &readback, D3DFMT_A32B32G32R32F,
            width, height, vshader, pshader);


    draw_quad_with_shader9(device, quad_geometry);
    IDirect3DDevice9_GetRenderTargetData(device, render_target, readback);
    hr = IDirect3DSurface9_LockRect(readback, &lr, ((void*)0), D3DLOCK_READONLY);
    ok(hr == D3D_OK, "IDirect3DSurface9_LockRect returned: %08x\n", hr);
    pbits_data = lr.pBits;


    for (i = 0; i < count; i++, probes++) {
        int index = probes->x + (probes->y * lr.Pitch / sizeof(D3DXCOLOR));
        ok(colors_match(probes->c, pbits_data[index], probes->epsilon),
                "Line %d: At (%d, %d): %s: Expected (%.04f,%.04f,%.04f, %.04f), got "
                "(%.04f,%.04f,%.04f,%.04f)\n", line_number, probes->x, probes->y, probes->message,
                probes->c.r, probes->c.g, probes->c.b, probes->c.a, pbits_data[index].r,
                pbits_data[index].g, pbits_data[index].b, pbits_data[index].a);
    }

    hr = IDirect3DSurface9_UnlockRect(readback);
    ok(hr == D3D_OK, "IDirect3DSurface9_UnlockRect returned: %08x\n", hr);





    hr = IDirect3DDevice9_Present(device, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ok(hr == D3D_OK, "IDirect3DDevice9_Present returned: %08x\n", hr);

    IDirect3DSurface9_Release(render_target);
    IDirect3DSurface9_Release(readback);
}
