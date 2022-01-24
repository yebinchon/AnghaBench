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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDirect3DRMObject ;
typedef  int /*<<< orphan*/  IDirect3DRMMesh ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ D3DRM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirect3DRMObject ; 
 int /*<<< orphan*/  IID_IDirect3DRMVisual ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    HRESULT hr;
    IDirect3DRM *d3drm;
    IDirect3DRMMesh *mesh;
    IUnknown *unk;

    hr = FUNC0(&d3drm);
    FUNC7(hr == D3DRM_OK, "Cannot get IDirect3DRM interface (hr = %x)\n", hr);

    hr = FUNC3(d3drm, &mesh);
    FUNC7(hr == D3DRM_OK, "Cannot get IDirect3DRMMesh interface (hr = %x)\n", hr);

    FUNC8((IDirect3DRMObject *)mesh, "Mesh");
    FUNC9((IDirect3DRMObject *)mesh);

    hr = FUNC1(mesh, &IID_IDirect3DRMObject, (void **)&unk);
    FUNC7(FUNC6(hr), "Failed to get IDirect3DRMObject, %#x.\n", hr);
    FUNC5(unk);

    hr = FUNC1(mesh, &IID_IDirect3DRMVisual, (void **)&unk);
    FUNC7(FUNC6(hr), "Failed to get IDirect3DRMVisual, %#x.\n", hr);
    FUNC5(unk);

    FUNC2(mesh);

    FUNC4(d3drm);
}