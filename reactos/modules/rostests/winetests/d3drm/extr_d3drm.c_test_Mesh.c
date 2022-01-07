
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IDirect3DRMObject ;
typedef int IDirect3DRMMesh ;
typedef int IDirect3DRM ;
typedef scalar_t__ HRESULT ;


 scalar_t__ D3DRM_OK ;
 scalar_t__ Direct3DRMCreate (int **) ;
 scalar_t__ IDirect3DRMMesh_QueryInterface (int *,int *,void**) ;
 int IDirect3DRMMesh_Release (int *) ;
 scalar_t__ IDirect3DRM_CreateMesh (int *,int **) ;
 int IDirect3DRM_Release (int *) ;
 int IID_IDirect3DRMObject ;
 int IID_IDirect3DRMVisual ;
 int IUnknown_Release (int *) ;
 int SUCCEEDED (scalar_t__) ;
 int ok (int,char*,scalar_t__) ;
 int test_class_name (int *,char*) ;
 int test_object_name (int *) ;

__attribute__((used)) static void test_Mesh(void)
{
    HRESULT hr;
    IDirect3DRM *d3drm;
    IDirect3DRMMesh *mesh;
    IUnknown *unk;

    hr = Direct3DRMCreate(&d3drm);
    ok(hr == D3DRM_OK, "Cannot get IDirect3DRM interface (hr = %x)\n", hr);

    hr = IDirect3DRM_CreateMesh(d3drm, &mesh);
    ok(hr == D3DRM_OK, "Cannot get IDirect3DRMMesh interface (hr = %x)\n", hr);

    test_class_name((IDirect3DRMObject *)mesh, "Mesh");
    test_object_name((IDirect3DRMObject *)mesh);

    hr = IDirect3DRMMesh_QueryInterface(mesh, &IID_IDirect3DRMObject, (void **)&unk);
    ok(SUCCEEDED(hr), "Failed to get IDirect3DRMObject, %#x.\n", hr);
    IUnknown_Release(unk);

    hr = IDirect3DRMMesh_QueryInterface(mesh, &IID_IDirect3DRMVisual, (void **)&unk);
    ok(SUCCEEDED(hr), "Failed to get IDirect3DRMVisual, %#x.\n", hr);
    IUnknown_Release(unk);

    IDirect3DRMMesh_Release(mesh);

    IDirect3DRM_Release(d3drm);
}
