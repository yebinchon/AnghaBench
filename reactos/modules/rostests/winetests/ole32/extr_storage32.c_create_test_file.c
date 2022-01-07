
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ const ULONG ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IStorage_CreateStorage (int *,int ,int,int ,int ,int **) ;
 scalar_t__ IStorage_CreateStream (int *,int ,int,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,int ,scalar_t__ const,scalar_t__ const*) ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_OK ;
 int lstrlenW (int ) ;
 int ok (int,char*,scalar_t__,...) ;
 int stgA_name ;
 int stgB_name ;
 int strmA_name ;
 int strmB_name ;
 int strmC_name ;

__attribute__((used)) static HRESULT create_test_file(IStorage *dest)
{
    IStorage *stgA = ((void*)0), *stgB = ((void*)0);
    IStream *strmA = ((void*)0), *strmB = ((void*)0), *strmC = ((void*)0);
    const ULONG strmA_name_size = lstrlenW(strmA_name) * sizeof(WCHAR);
    const ULONG strmB_name_size = lstrlenW(strmB_name) * sizeof(WCHAR);
    const ULONG strmC_name_size = lstrlenW(strmC_name) * sizeof(WCHAR);
    ULONG bytes;
    HRESULT hr;

    hr = IStorage_CreateStorage(dest, stgA_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stgA);
    ok(hr == S_OK, "IStorage_CreateStorage failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;

    hr = IStorage_CreateStream(stgA, strmA_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &strmA);
    ok(hr == S_OK, "IStorage_CreateStream failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;

    hr = IStream_Write(strmA, strmA_name, strmA_name_size, &bytes);
    ok(hr == S_OK && bytes == strmA_name_size, "IStream_Write failed: 0x%08x, %d of %d bytes written\n", hr, bytes, strmA_name_size);

    hr = IStorage_CreateStorage(dest, stgB_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stgB);
    ok(hr == S_OK, "IStorage_CreateStorage failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;

    hr = IStorage_CreateStream(stgB, strmB_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &strmB);
    ok(hr == S_OK, "IStorage_CreateStream failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;

    hr = IStream_Write(strmB, strmB_name, strmB_name_size, &bytes);
    ok(hr == S_OK && bytes == strmB_name_size, "IStream_Write failed: 0x%08x, %d of %d bytes written\n", hr, bytes, strmB_name_size);

    hr = IStorage_CreateStream(dest, strmC_name, STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &strmC);
    ok(hr == S_OK, "IStorage_CreateStream failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;

    hr = IStream_Write(strmC, strmC_name, strmC_name_size, &bytes);
    ok(hr == S_OK && bytes == strmC_name_size, "IStream_Write failed: 0x%08x, %d of %d bytes written\n", hr, bytes, strmC_name_size);

cleanup:
    if(strmC)
        IStream_Release(strmC);
    if(strmB)
        IStream_Release(strmB);
    if(stgB)
        IStorage_Release(stgB);
    if(strmA)
        IStream_Release(strmA);
    if(stgA)
        IStorage_Release(stgA);

    return hr;
}
