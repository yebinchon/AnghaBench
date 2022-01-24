#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  a; int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
struct hlsl_probe_info {int y; TYPE_3__ c; int /*<<< orphan*/  message; int /*<<< orphan*/  x; int /*<<< orphan*/  epsilon; } ;
struct TYPE_7__ {int Pitch; TYPE_1__* pBits; } ;
struct TYPE_6__ {int /*<<< orphan*/  a; int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  IDirect3DVertexShader9 ;
typedef  int /*<<< orphan*/  IDirect3DVertexBuffer9 ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  IDirect3DPixelShader9 ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ D3DXCOLOR ;
typedef  TYPE_2__ D3DLOCKED_RECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFMT_A32B32G32R32F ; 
 int /*<<< orphan*/  D3DLOCK_READONLY ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(IDirect3DDevice9 *device, IDirect3DVertexShader9 *vshader,
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

    FUNC8(device, &render_target, &readback, D3DFMT_A32B32G32R32F,
            width, height, vshader, pshader);

    /* Draw the quad with the shader and read back the data */
    FUNC6(device, quad_geometry);
    FUNC0(device, render_target, readback);
    hr = FUNC2(readback, &lr, NULL, D3DLOCK_READONLY);
    FUNC7(hr == D3D_OK, "IDirect3DSurface9_LockRect returned: %08x\n", hr);
    pbits_data = lr.pBits;

    /* Now go through the probes and check each one */
    for (i = 0; i < count; i++, probes++) {
        int index = probes->x + (probes->y * lr.Pitch / sizeof(D3DXCOLOR));
        FUNC7(FUNC5(probes->c, pbits_data[index], probes->epsilon),
                "Line %d: At (%d, %d): %s: Expected (%.04f,%.04f,%.04f, %.04f), got "
                "(%.04f,%.04f,%.04f,%.04f)\n", line_number, probes->x, probes->y, probes->message,
                probes->c.r, probes->c.g, probes->c.b, probes->c.a, pbits_data[index].r,
                pbits_data[index].g, pbits_data[index].b, pbits_data[index].a);
    }

    hr = FUNC4(readback);
    FUNC7(hr == D3D_OK, "IDirect3DSurface9_UnlockRect returned: %08x\n", hr);

    /* We now present the scene. This is mostly for debugging purposes, since GetRenderTargetData
       also waits for drawing commands to complete. The reason this call is here and not in a
       draw function is because the contents of the render target surface are invalidated after
       this call. */
    hr = FUNC1(device, NULL, NULL, NULL, NULL);
    FUNC7(hr == D3D_OK, "IDirect3DDevice9_Present returned: %08x\n", hr);

    FUNC3(render_target);
    FUNC3(readback);
}