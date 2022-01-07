
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int WCHAR ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;


 int DeleteFileA (int ) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IStorage ;
 scalar_t__ IStorage_CopyTo (int *,int,int *,int *,int *) ;
 scalar_t__ IStorage_OpenStorage (int *,int ,int *,int,int *,int ,int **) ;
 scalar_t__ IStorage_OpenStream (int *,int *,int *,int,int ,int **) ;
 int IStorage_Release (int *) ;
 scalar_t__ IStream_Read (int *,int *,int,int *) ;
 int IStream_Release (int *) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ STG_E_FILENOTFOUND ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int ,int,int ,int **) ;
 scalar_t__ create_test_file (int *) ;
 int file1_name ;
 int file1_nameA ;
 int file2_name ;
 int file2_nameA ;
 int memset (int *,int ,int) ;
 int ok (int,char*,scalar_t__,...) ;
 int stgA_name ;
 int stgB_name ;
 scalar_t__ strcmp_ww (int *,int *) ;
 int * strmA_name ;
 int * strmB_name ;
 int * strmC_name ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_copyto_iidexclusions_storage(void)
{
    IStorage *file1 = ((void*)0), *file2 = ((void*)0), *stg_tmp;
    IStream *strm_tmp;
    WCHAR buf[64];
    HRESULT hr;


    hr = StgCreateDocfile(file1_name, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &file1);
    ok(hr == S_OK, "StgCreateDocfile failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;

    hr = create_test_file(file1);
    if(FAILED(hr))
        goto cleanup;


    hr = StgCreateDocfile(file2_name, STGM_CREATE | STGM_SHARE_EXCLUSIVE | STGM_READWRITE, 0, &file2);
    ok(hr == S_OK, "StgCreateDocfile failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;


    hr = IStorage_CopyTo(file1, 1, &IID_IStorage, ((void*)0), file2);
    ok(hr == S_OK, "CopyTo failed: 0x%08x\n", hr);
    if(FAILED(hr))
        goto cleanup;


    hr = IStorage_OpenStorage(file2, stgA_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, ((void*)0), 0, &stg_tmp);
    ok(hr == STG_E_FILENOTFOUND, "OpenStorage should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(SUCCEEDED(hr))
        IStorage_Release(stg_tmp);

    hr = IStorage_OpenStream(file2, strmA_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
    ok(hr == STG_E_FILENOTFOUND, "OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(SUCCEEDED(hr))
        IStream_Release(strm_tmp);

    hr = IStorage_OpenStorage(file2, stgB_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, ((void*)0), 0, &stg_tmp);
    ok(hr == STG_E_FILENOTFOUND, "OpenStorage should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(SUCCEEDED(hr))
        IStorage_Release(stg_tmp);

    hr = IStorage_OpenStream(file2, strmB_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
    ok(hr == STG_E_FILENOTFOUND, "OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\n", hr);
    if(SUCCEEDED(hr))
        IStream_Release(strm_tmp);

    hr = IStorage_OpenStream(file2, strmC_name, ((void*)0),
            STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &strm_tmp);
    ok(hr == S_OK, "OpenStream failed: 0x%08x\n", hr);

    if(SUCCEEDED(hr)){
        memset(buf, 0, sizeof(buf));
        hr = IStream_Read(strm_tmp, buf, sizeof(buf), ((void*)0));
        ok(hr == S_OK, "Read failed: 0x%08x\n", hr);
        if(SUCCEEDED(hr))
            ok(strcmp_ww(buf, strmC_name) == 0,
                    "Expected %s to be read, got %s\n", wine_dbgstr_w(strmC_name), wine_dbgstr_w(buf));

        IStream_Release(strm_tmp);
    }

cleanup:
    if(file1)
        IStorage_Release(file1);
    if(file2)
        IStorage_Release(file2);

    DeleteFileA(file1_nameA);
    DeleteFileA(file2_nameA);
}
