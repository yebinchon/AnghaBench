#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vertex {int dummy; } ;
typedef  int /*<<< orphan*/  IDirect3DVertexBuffer9 ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  D3DXMATRIX ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCLEAR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3DPT_TRIANGLESTRIP ; 
 int /*<<< orphan*/  D3DTS_PROJECTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,float,float,float) ; 
 scalar_t__ D3D_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(IDirect3DDevice9 *device, IDirect3DVertexBuffer9 *quad_geometry)
{
    HRESULT hr;
    D3DXMATRIX projection_matrix;

    FUNC1(&projection_matrix, 2.0f, 2.0f, 0.0f, 1.0f);
    FUNC7(device, D3DTS_PROJECTION, &projection_matrix);

    hr = FUNC3(device, 0, NULL, D3DCLEAR_TARGET, FUNC0(0, 0, 0), 1.0f, 0);
    FUNC8(hr == D3D_OK, "IDirect3DDevice9_Clear returned: %08x\n", hr);

    hr = FUNC2(device);
    FUNC8(hr == D3D_OK, "IDirect3DDevice9_BeginScene returned: %08x\n", hr);

    hr = FUNC6(device, 0, quad_geometry, 0, sizeof(struct vertex));
    FUNC8(hr == D3D_OK, "IDirect3DDevice9_SetStreamSource returned: %08x\n", hr);
    hr = FUNC4(device, D3DPT_TRIANGLESTRIP, 0, 2);
    FUNC8(hr == D3D_OK, "IDirect3DDevice9_DrawPrimitive returned: %08x\n", hr);

    hr = FUNC5(device);
    FUNC8(hr == D3D_OK, "IDirect3DDevice9_EndScene returned: %08x\n", hr);
}