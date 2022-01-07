
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int ID3D10Blob ;
typedef scalar_t__ HRESULT ;


 scalar_t__ D3DERR_INVALIDCALL ;
 scalar_t__ ID3D10Blob_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pD3DCreateBlob (int,int **) ;

__attribute__((used)) static void test_create_blob(void)
{
    ID3D10Blob *blob;
    HRESULT hr;
    ULONG refcount;

    hr = pD3DCreateBlob(1, ((void*)0));
    ok(hr == D3DERR_INVALIDCALL, "D3DCreateBlob failed with %x\n", hr);

    hr = pD3DCreateBlob(0, ((void*)0));
    ok(hr == D3DERR_INVALIDCALL, "D3DCreateBlob failed with %x\n", hr);

    hr = pD3DCreateBlob(0, &blob);
    ok(hr == S_OK, "D3DCreateBlob failed with %x\n", hr);

    refcount = ID3D10Blob_Release(blob);
    ok(!refcount, "ID3DBlob has %u references left\n", refcount);
}
