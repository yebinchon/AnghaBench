
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dSize; int lpMemory; } ;
typedef int IDirect3DRM ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef TYPE_1__ D3DRMLOADMEMORY ;


 int D3DRMLOAD_FROMMEMORY ;
 scalar_t__ D3DRM_OK ;
 scalar_t__ Direct3DRMCreate (int **) ;
 scalar_t__ IDirect3DRM_Load (int *,TYPE_1__*,int *,int **,int,int ,int ,void*,int *,int *,int *) ;
 int IDirect3DRM_Release (int *) ;
 int const IID_IDirect3DRMFrame ;
 int const IID_IDirect3DRMMaterial ;
 int const IID_IDirect3DRMMeshBuilder ;
 int data_d3drm_load ;
 int nb_objects ;
 int object_load_callback ;
 int ok (int,char*,int) ;
 int strlen (int ) ;

__attribute__((used)) static void test_d3drm_load(void)
{
    HRESULT hr;
    IDirect3DRM *d3drm;
    D3DRMLOADMEMORY info;
    const GUID* req_refiids[] = { &IID_IDirect3DRMMeshBuilder, &IID_IDirect3DRMFrame, &IID_IDirect3DRMMaterial };

    hr = Direct3DRMCreate(&d3drm);
    ok(hr == D3DRM_OK, "Cannot get IDirect3DRM interface (hr = %x)\n", hr);

    info.lpMemory = data_d3drm_load;
    info.dSize = strlen(data_d3drm_load);
    hr = IDirect3DRM_Load(d3drm, &info, ((void*)0), (GUID **)req_refiids, 3, D3DRMLOAD_FROMMEMORY,
            object_load_callback, (void *)0xdeadbeef, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == D3DRM_OK, "Cannot load data (hr = %x)\n", hr);
    ok(nb_objects == 3, "Should have loaded 3 objects (got %d)\n", nb_objects);

    IDirect3DRM_Release(d3drm);
}
