#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* dSize; void* lpMemory; } ;
typedef  int /*<<< orphan*/  IDirect3DRMObject ;
typedef  int /*<<< orphan*/  IDirect3DRMMeshBuilder3 ;
typedef  int /*<<< orphan*/  IDirect3DRM3 ;
typedef  int /*<<< orphan*/  IDirect3DRM ;
typedef  float HRESULT ;
typedef  int DWORD ;
typedef  float D3DVALUE ;
typedef  TYPE_1__ D3DRMLOADMEMORY ;

/* Variables and functions */
 float D3DRMERR_BADFILE ; 
 float D3DRMERR_BADVALUE ; 
 float D3DRMERR_NOTFOUND ; 
 int /*<<< orphan*/  D3DRMLOAD_FROMMEMORY ; 
 float D3DRM_OK ; 
 float FUNC0 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (float) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 float FUNC5 (int /*<<< orphan*/ *,int,float*,float*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 float FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 float FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 float FUNC10 (int /*<<< orphan*/ *,int,float,float) ; 
 float FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirect3DRM3 ; 
 void* data_bad_version ; 
 void* data_no_mesh ; 
 void* data_ok ; 
 int /*<<< orphan*/  FUNC13 (int,char*,float) ; 
 void* FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,float) ; 

__attribute__((used)) static void FUNC18(void)
{
    HRESULT hr;
    IDirect3DRM *d3drm;
    IDirect3DRM3 *d3drm3;
    IDirect3DRMMeshBuilder3 *pMeshBuilder3;
    D3DRMLOADMEMORY info;
    int val;
    DWORD val1;
    D3DVALUE valu, valv;

    hr = FUNC0(&d3drm);
    FUNC13(hr == D3DRM_OK, "Cannot get IDirect3DRM interface (hr = %x)\n", hr);

    if (FUNC1(hr = FUNC11(d3drm, &IID_IDirect3DRM3, (void **)&d3drm3)))
    {
        FUNC17("Cannot get IDirect3DRM3 interface (hr = %x), skipping tests\n", hr);
        FUNC12(d3drm);
        return;
    }

    hr = FUNC2(d3drm3, &pMeshBuilder3);
    FUNC13(hr == D3DRM_OK, "Cannot get IDirect3DRMMeshBuilder3 interface (hr = %x)\n", hr);

    FUNC15((IDirect3DRMObject *)pMeshBuilder3, "Builder");
    FUNC16((IDirect3DRMObject *)pMeshBuilder3);

    info.lpMemory = data_bad_version;
    info.dSize = FUNC14(data_bad_version);
    hr = FUNC8(pMeshBuilder3, &info, NULL, D3DRMLOAD_FROMMEMORY, NULL, NULL);
    FUNC13(hr == D3DRMERR_BADFILE, "Should have returned D3DRMERR_BADFILE (hr = %x)\n", hr);

    info.lpMemory = data_no_mesh;
    info.dSize = FUNC14(data_no_mesh);
    hr = FUNC8(pMeshBuilder3, &info, NULL, D3DRMLOAD_FROMMEMORY, NULL, NULL);
    FUNC13(hr == D3DRMERR_NOTFOUND, "Should have returned D3DRMERR_NOTFOUND (hr = %x)\n", hr);

    info.lpMemory = data_ok;
    info.dSize = FUNC14(data_ok);
    hr = FUNC8(pMeshBuilder3, &info, NULL, D3DRMLOAD_FROMMEMORY, NULL, NULL);
    FUNC13(hr == D3DRM_OK, "Cannot load mesh data (hr = %x)\n", hr);

    val = FUNC6(pMeshBuilder3);
    FUNC13(val == 4, "Wrong number of vertices %d (must be 4)\n", val);

    val = FUNC4(pMeshBuilder3);
    FUNC13(val == 3, "Wrong number of faces %d (must be 3)\n", val);

    hr = FUNC7(pMeshBuilder3, 0, &val1, NULL);
    FUNC13(hr == D3DRM_OK, "Cannot get vertices information (hr = %x)\n", hr);
    FUNC13(val1 == 4, "Wrong number of vertices %d (must be 4)\n", val1);

    /* Check that Load method generated default texture coordinates (0.0f, 0.0f) for each vertex */
    valu = 1.23f;
    valv = 3.21f;
    hr = FUNC5(pMeshBuilder3, 0, &valu, &valv);
    FUNC13(hr == D3DRM_OK, "Cannot get texture coordinates (hr = %x)\n", hr);
    FUNC13(valu == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valu);
    FUNC13(valv == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valv);
    valu = 1.23f;
    valv = 3.21f;
    hr = FUNC5(pMeshBuilder3, 1, &valu, &valv);
    FUNC13(hr == D3DRM_OK, "Cannot get texture coordinates (hr = %x)\n", hr);
    FUNC13(valu == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valu);
    FUNC13(valv == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valv);
    valu = 1.23f;
    valv = 3.21f;
    hr = FUNC5(pMeshBuilder3, 2, &valu, &valv);
    FUNC13(hr == D3DRM_OK, "Cannot get texture coordinates (hr = %x)\n", hr);
    FUNC13(valu == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valu);
    FUNC13(valv == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valv);
    valu = 1.23f;
    valv = 3.21f;
    hr = FUNC5(pMeshBuilder3, 3, &valu, &valv);
    FUNC13(hr == D3DRM_OK, "Cannot get texture coordinates (hr = %x)\n", hr);
    FUNC13(valu == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valu);
    FUNC13(valv == 0.0f, "Wrong coordinate %f (must be 0.0)\n", valv);
    hr = FUNC5(pMeshBuilder3, 4, &valu, &valv);
    FUNC13(hr == D3DRMERR_BADVALUE, "Should fail and return D3DRM_BADVALUE (hr = %x)\n", hr);

    valu = 1.23f;
    valv = 3.21f;
    hr = FUNC10(pMeshBuilder3, 0, valu, valv);
    FUNC13(hr == D3DRM_OK, "Cannot set texture coordinates (hr = %x)\n", hr);
    hr = FUNC10(pMeshBuilder3, 4, valu, valv);
    FUNC13(hr == D3DRMERR_BADVALUE, "Should fail and return D3DRM_BADVALUE (hr = %x)\n", hr);

    valu = 0.0f;
    valv = 0.0f;
    hr = FUNC5(pMeshBuilder3, 0, &valu, &valv);
    FUNC13(hr == D3DRM_OK, "Cannot get texture coordinates (hr = %x)\n", hr);
    FUNC13(valu == 1.23f, "Wrong coordinate %f (must be 1.23)\n", valu);
    FUNC13(valv == 3.21f, "Wrong coordinate %f (must be 3.21)\n", valv);

    FUNC9(pMeshBuilder3);
    FUNC3(d3drm3);
    FUNC12(d3drm);
}